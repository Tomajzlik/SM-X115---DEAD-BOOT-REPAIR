$ErrorActionPreference='Stop'
$manifest=Get-Content (Join-Path $PSScriptRoot 'PARTS_MANIFEST.json') -Raw | ConvertFrom-Json
if($manifest.archive -ne 'SM-X115_BIT6_ORIGINAL_RECOVERY_PUBLIC.zip'){throw 'Unexpected archive name'}
$output=Join-Path $PSScriptRoot $manifest.archive
if(Test-Path -LiteralPath $output){throw 'Output ZIP already exists. Move it before joining again.'}
foreach($p in $manifest.parts){
 if($p.name -notmatch '^SM-X115_BIT6_ORIGINAL_RECOVERY_PUBLIC\.zip\.\d{3}$'){throw 'Invalid part name'}
 $file=Join-Path $PSScriptRoot $p.name
 if(!(Test-Path -LiteralPath $file) -or (Get-Item -LiteralPath $file).Length -ne $p.size){throw "Missing/wrong size: $($p.name)"}
 if((Get-FileHash -LiteralPath $file -Algorithm SHA256).Hash.ToLowerInvariant() -ne $p.sha256){throw "Checksum failed: $($p.name)"}
}
$dest=[IO.File]::Open($output,[IO.FileMode]::CreateNew,[IO.FileAccess]::Write,[IO.FileShare]::None)
try{foreach($p in $manifest.parts){$inputStream=[IO.File]::OpenRead((Join-Path $PSScriptRoot $p.name));try{$inputStream.CopyTo($dest)}finally{$inputStream.Dispose()}}}finally{$dest.Dispose()}
if((Get-Item -LiteralPath $output).Length -ne $manifest.size -or (Get-FileHash -LiteralPath $output -Algorithm SHA256).Hash.ToLowerInvariant() -ne $manifest.sha256){throw 'Final ZIP checksum failed. Do not flash.'}
Write-Host "ZIP reassembled and SHA-256 verified: $output"

function Get-ScriptDirectory {
    $Invocation = (Get-Variable MyInvocation -Scope 1).Value
    Split-Path $Invocation.MyCommand.Path
}

$pathToFiles = Get-ScriptDirectory

$pathToFiles


$content = Get-Content -Path $pathToFiles'\LOL_5v5_casted.json'

$newContent = $content -replace 'ReplaceWithPATH', $pathToFiles
$newContent = $newContent -replace '\\', '/'

$newContent | Set-Content -Path $pathToFiles'\LOL_5v5_casted_READYtoUSE.json' -Force

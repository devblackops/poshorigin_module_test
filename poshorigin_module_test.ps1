param(
    [switch]$IncludeFiles
)

if ($PSBoundParameters.ContainsKey('IncludeFiles')) {
    if ($IncludeFiles -eq $true) {
        . (Join-Path -Path $PSScriptRoot -ChildPath 'files.ps1')
    }
}

resource 'poshorigin:poshfolder' 'folder01' @{
    description = 'this is an exmaple folder'
    ensure = 'present'
    path = 'c:\'
}

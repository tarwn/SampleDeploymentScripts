

function Get-CommitsFromGitLog([string] $StartCommit, [string] $EndCommit){
    $Cmd = "git log --pretty=format:""CommitHash=%H :: AuthorEmail=%ae :: AuthorDate=%ad :: Subject=%s"" $StartCommit...$EndCommit"
    Write-Host "Git Command: $Cmd" 
    $Result = Invoke-Expression $Cmd
    $ParsedResult = $Result | %{ ConvertFrom-StringData($_ -replace " :: ", "`n")  }
    return $ParsedResult
}

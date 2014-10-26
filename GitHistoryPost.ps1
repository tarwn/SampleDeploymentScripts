
# These are scripts that can be run directly in TeamCity build steps and utilize
# the Predefined Build Parameters it supports

Import-Module "./modules/GitHistory.psm1" -Force

# 1 - Get commit message for commit that triggered the build

# Get-CommitsFromGitLog -StartCommit "%build.vcs.number%^" -EndCommit "%build.vcs.number%"
Get-CommitsFromGitLog -StartCommit "7fb261c^" -EndCommit "7fb261c"

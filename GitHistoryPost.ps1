
# These are scripts that can be run directly in TeamCity build steps and utilize
# the Predefined Build Parameters it supports

Import-Module "./modules/GitHistory.psm1"

# 1 - Get commit message for commit that triggered the build

# Get-CommitsFromGitLog -StartCommit "%build.vcs.number%^" -EndCommit "%build.vcs.number%"
Get-CommitsFromGitLog -StartCommit "a87199b17e6ac5ca51f7c9cf011bab416ebf0378^" -EndCommit "a87199b17e6ac5ca51f7c9cf011bab416ebf0378"

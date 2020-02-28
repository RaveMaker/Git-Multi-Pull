Git-Multi-Pull
===================

This script does 'git pull' in all repositories in multiple folders.

For example assuming you have a few projects each with its own set of repos and you want to update all of them:
```
# add '/prject1' to settings.cfg to include:
/project1/repo1
/project1/repo2

# add '/prject2' to settings.cfg to include:
/project2/repo1
/project2/repo2

...
``` 

### Installation

1. Clone this script from github or copy the files manually to your prefered directory.

2. Create settings.cfg from settings.cfg.example and change:

```
# Array of folders containing multiple git repositories
DEST_FOLDERS=("/My/Public/Repositories" "/My/Private/Repositories")

# true/false. set to "false" to enable "git pull"
DEBUG_MODE="true"
```

Author: [RaveMaker][RaveMaker].

[RaveMaker]: http://ravemaker.net

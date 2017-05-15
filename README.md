# Omeka Workspace
This will allow omeka to be run locally.

### Installing
- Clone repository
- `git clone git@github.com:stephenwf/omeka-workspace.git`
- Copy existing mysql folder e.g.
- `cp -rp ../Omeka-S-Docker/docker/runtime/mysql/* ./mysql`

### Running
```bash
$ docker-compose up
```

### Using module loader:
- Create personal token:
- https://github.com/settings/tokens
- Copy username and token into `./bin/omeka-install-module` line 3-4
- Usage:
- `$ ./bin/omeka-install-module {org}/{repo} {?folder}`
- Example:
- `$ ./bin/omeka-install-module digirati-co-uk/omeka-elucidate-module Elucidate`
- This points to a github repository that can be pulled down.
- Follow errors and instructions if needed.
- DON'T COMMIT YOUR TOKEN! (github will delete it if you do though!)

### Module loader requirements (via homebrew)
- curl `$ brew install curl`
- php `$ brew install php`
- jq `$ brew install jq`
- git `$ brew install git`

# Omeka Workspace
This will allow omeka to be run locally.



## Complete working environment including front end install

*This section last updated Monday, 5 June 2017*

* **Requirements** Node, NPM, Yarn & Grunt

```sh
brew install node
brew install yarn
npm install -g grunt
npm install -g grunt-cli
```

* **Checkout** all repos you will need

```sh
git clone git@github.com:digirati-co-uk/omeka-workspace.git
./omeka-workspace/bin/checkout-everything.sh
```

* **Start docker** container

```sh
cd omeka-workspace
docker-compose up
```

* **Install Modules** in new terminal window 

```sh
./bin/install-modules.sh
```

* **Import database** includes all resource templates required.

```sh
mysql -u omeka_s -p --host 127.0.0.1 --port 3334 omeka_s < omeka-workspace/database/quickstart-database.sql
```

* **Install Theme** replace nlw with ida or rs

```sh
cd nlw-frontend
yarn
grunt devomeka
```



### Installing
- Clone repository
- `git clone git@github.com:stephenwf/omeka-workspace.git`
- Copy existing mysql folder e.g.
- `cp -rp ../Omeka-S-Docker/docker/runtime/mysql/* ./mysql`

### Running
```bash
$ docker-compose up
```

---


## Alternative installation method (Advanced)


### Installation of modules Using module loader:
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

# Foundation-dnn

<img src="http://foundation.agencyrevolution.com/Portals/design/Skins/Foundation/image/hero-image.svg" alt="Foundation-dnn" width="300" align="right"/>

*Build a site theme with Foundation on the DNN platform.*

* Requires: DotNetNuke 7.0
* Download: [get latest release](https://github.com/agencyrevolution/foundation-dnn/releases/latest), move to your project, unzip

## Installation

``` bash
# First Run
sudo scripts/install

# Re-install
rm -rf node_modules
sudo npm i --no-bin-links

# Start hacking
gulp dev
```

## Custom Theme

``` bash
# Install Hub Subcommand for this
brew install hub
# or on linux
sudo add-apt-repository ppa:cpick/hub
sudo apt-get update
sudo apt-get install hub

# Create new repo
git remote rename origin upstream
git create arclients/agency-name

# Create a new custom branch where you can modify files
git checkout -b custom

# Stage and commit your changes
git add -A
git commit -m "Changes..."

# Get latest changes to the framework and merge them into your custom branch
git pull upstream master

# Publish the changes to your new repo
git push -u origin custom
```

## Switching Themes

``` shell
git fetch
git checkout branch-theme-name
```

### Commands

* `gulp dev` Watch the project for development
* `gulp build` Build the project for production

* `npm run global` Installs gulp pacakges globally and links them to your project.
* `npm run clean` Destroys all generated directories.


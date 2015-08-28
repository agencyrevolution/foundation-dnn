# Foundation-dnn

<img src="http://foundation.agencyrevolution.com/Portals/design/Skins/Foundation/image/hero-image.svg" alt="Foundation-dnn" width="300" align="right"/>

*Build a site theme with Foundation on the DNN platform.*

* Requires: DotNetNuke 7.0
* Download: [get latest release](https://github.com/agencyrevolution/foundation-dnn/releases/latest), move to your project, unzip

## Installation

```
# Install devDependencies first time only
sudo ./npm-install-global

# Next time you only need to run this
sudo ./npm-link

# Install dependencies
sudo npm install --production

# Move necessary assets out of dependencies
sudo ./npm-preen

# Start hacking
gulp dev
# or
gulp build-watch
```

## Custom Theme

```
# Install Hub Subcommand for this
brew install hub

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
git push origin custom
```

### Commands

* `gulp dev` Watch the project for development
* `gulp build` Build the project for production

* `npm run global` Installs gulp pacakges globally and links them to your project.
* `npm run clean` Destroys all generated directories.


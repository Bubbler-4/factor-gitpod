# factor-gitpod

A Docker image with Factor installed, for use in Gitpod

* Bundle Factor package (stable 0.98) in `~/.factor`
* Add the directory to PATH, so that Factor can be run with simply `factor`
* Add some settings to `~/.factor-rc` to ease development
  * Enable `auto-use`
  * Add the current directory to the list of vocab roots

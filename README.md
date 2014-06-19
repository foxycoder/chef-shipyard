# shipyard cookbook

This cookbook installs the docker management application shipyard

http://shipyard-project.com/

# Usage

- converge host with ```shipyard::server```
- Wait for deploy to finish, check that WebUI is reachable.
- converge agent hosts with correct shipyard URL.

Agents connects automaticaly, but need to be enabled in WebUI

# Attributes

```node['shipyard']['url']``` = server url

# Recipes

This cookbook has two main recipies:

- shipyard::default - docker and shipyard-agent
- shipyard::server  - docker and shipyard-server

# Author

Author:: Sergey Melnik (smelnik@onetwotrip.com)

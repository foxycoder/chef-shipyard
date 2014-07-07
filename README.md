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
- shipyard::registry - log into private registry (optional)

## Shipyard::Registry

By default, this is disabled.

```ruby
node['shipyard']['registry']['private_url'] = nil
```

To use this, add the private url to the node/role config:

```json
{
  "shipyard": {
    "registry": {
      "private_url": "https://index.docker.io/v1/"
    }
  }
}
```

And create an encrypted data bag with the credentials like so:

```bash
$ knife data bag create docker registry
```

With the following content:

```json
{
  "username": "your_username",
  "password": "your_password"
}
```

# Author

Author:: Sergey Melnik (smelnik@onetwotrip.com)

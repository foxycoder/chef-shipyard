# shipyard cookbook

This cookbook installs the docker management application shipyard

http://shipyard-project.com/

# Requirements

This cookbook has only been tested on Ubuntu 13.10

It has the following cookbook dependencies

- docker

# Usage

This cookbook is confgured to be run using vagrant. First install the following plugins:

    vagrant plugin install vagrant-omnibus
    vagrant plugin install vagrant-berkshelf
    vagrant plugin install vagrant-chef-zero

Run vagrant as normal

    vagrant up

Once complete the shipyard server should be running on on the following URL

    http://33.33.33.10:8000/

Login with the default credentials "admin/shipyard"

Once we have a shipyard server we'll need an agent running

    vagrant ssh
    sudo shipyard-agent -url http://33.33.33.10:8000 -register
    sudo shipyard-agent -url http://33.33.33.10:8000 -key XXXXXX &

And this agent will need to be accepted in the shipyard UI

# Attributes

# Recipes

- default

# Author

Author:: Mark O'Connor (mark@myspotontheweb.com)

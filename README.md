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

Once complete Jenkins should be running on on the following URL

    http://33.33.33.10:8000/

Login with the default credentials "admin/shipyard"

# Attributes

# Recipes

- default

# Author

Author:: Mark O'Connor (mark@myspotontheweb.com)

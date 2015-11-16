Mongo Chef Gem Installer Cookbook
==================================

mongo_chef_gem is a library cookbook that provides an LWRP for use
in recipes. It provides a wrapper around `chef_gem` called
`mongo_chef_gem` that eases the installation process, collecting the
prerequisites and side-stepping the compilation phase arms race.

Scope
-----
This cookbook is concerned with the installation of the `mongo`
Rubygem into Chef's gem path. Installation into other Ruby
environments, or installation of related gems such as `mongo` are
outside the scope of this cookbook.

Requirements
------------
* Chef 11 or higher
* Ruby 1.9 (preferably from the Chef full-stack installer)

Usage
-----
```ruby
depends 'mongo_chef_gem', '~> 0.1.0'
```

Then, in a recipe:

```ruby
mongo_chef_gem 'default' do
  action :install
end
```

Resources Overview
------------------
### mongo_chef_gem

The `mongo_chef_gem` resource the build dependencies and installation
of the `mongo` rubygem into Chef's Ruby environment

#### Example
```ruby
mongo_chef_gem 'default' do
  mongo_version '2.1.2'
  bson_ext_version '1.12.4'
  action :install
end
```
#### Parameters
- `mongo_version` - The version of the `mongo` Rubygem to install into
  the Chef environment. Defaults to last version.
- `bson_ext_version` - The version of the `bson_ext` Rubygem to install into
  the Chef environment. Defaults to last version.

#### Actions
- `:install` - Build and install the gem into the Chef environment
- `:remove` - Delete the gem from the Chef environment

Authors
-------
- Author:: Andrei Skopenko (<andrey@skopenko.net>)

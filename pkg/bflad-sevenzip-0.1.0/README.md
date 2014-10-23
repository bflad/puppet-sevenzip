# puppet-sevenzip

## Description

Installs/Configures [7-zip](http://7-zip.org/)

## Requirements

### Platforms

* Arch Linux 2014.08.01+ 
* CentOS 5, 6, 7 
* Debian 6, 7 
* RHEL 5, 6, 7
* Ubuntu 12.04, 14.04

### Modules

* [epel](https://forge.puppetlabs.com/stahnma/epel/)

## Heira Data and Defaults

These facts are in the `sevenzip::` hiera data namespace.

Fact | Description | Type | Default
-----|-------------|------|--------
package | Package of sevenzip to install | String | p7zip
version | Version of sevenzip to install | String | latest

## Manifests

* `init` Installs/Configures 7-zip
* `install` Installs 7-zip

## Usage

### Default Installation

Add the below to your profile.

    class { 'sevenzip': }

## Testing and Development

* Quickly testing with Vagrant: [VAGRANT.md](VAGRANT.md)
* Full development and testing workflow with rspec-puppet, puppet-lint, and friends: [TESTING.md](TESTING.md)

## Contributing

Please use standard Github issues/pull requests and if possible, in combination with testing on the Vagrant boxes.

## Maintainers

* Brian Flad (<bflad417@gmail.com>)

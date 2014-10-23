# == Class: sevenzip::install
#
# Install sevenzip
#
# === Parameters
#
# [*version*]
#   Version of 7-zip to install, defaults to 9.20.1
#
# === Examples
#
#  class { sevenzip::install:
#    version => '9.20.1',
#  }
#
# === Authors
#
# Brian Flad <bflad417@gmail.com>
#
# === Copyright
#
# Copyright (c) 2014 Brian Flad Licensed under the Apache 2.0 License
#
class sevenzip::install(
  $package = $sevenzip::params::package,
  $version = $sevenzip::params::version,
  ) inherits sevenzip::params {
  if $::osfamily == 'RedHat' {
    require '::epel'
  }

  package { $package:
    ensure => $version,
  }
}

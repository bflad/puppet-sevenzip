# == Class: sevenzip
#
# Installs 7-zip
#
# === Parameters
#
# [*version*]
#   Version of 7-zip to install, defaults to 9.20.1
#
# === Examples
#
#  class { sevenzip:
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
class sevenzip(
  $package = $sevenzip::params::package,
  $version = $sevenzip::params::version,
  ) inherits sevenzip::params {
  class { 'sevenzip::install':
    package => $package,
    version => $version,
  }
}

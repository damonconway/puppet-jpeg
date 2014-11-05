# == Class: jpeg
#
# This class manages jpeg packages on RedHat and Debian systems.
#
# === Parameters
#
# Document parameters here.
#
# [*dev_package_name*]
#   This sets the name value for the jpeg-devel package resource.
#
# [*ensure_pkg*]
#   This sets the ensure value for the jpeg package resource.
#
# [*ensure_dev_pkg*]
#   This sets the ensure value for the jpeg-devel package resource.
#
# [*install_options*]
#   This sets the install_options value for all package resources.
#
# [*package_name*]
#   This sets the name value for the jpeg package resource.
#
# === Variables
#
# This class has no variables.
#
# === Examples
#
#  class { jpeg:
#    ensure_dev_pkg => 'installed',
#  }
#
# === Authors
#
# Damon Conway <vstraylight@gmail.com>
#
# === Copyright
#
# Copyright 2014 Damon Conway
#
class jpeg (
  $dev_package_name = $jpeg::params::dev_package_name,
  $ensure_pkg       = 'installed',
  $ensure_dev_pkg   = 'absent',
  $install_options  = undef,
  $package_name     = $jpeg::params::package_name
) inherits jpeg::params {

  include jpeg::install

}

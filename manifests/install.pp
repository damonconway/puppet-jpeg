#
class jpeg::install {

  package { 'jpeg':
    ensure => $ensure_pkg,
    name   => $package_name,
  }

  package { 'jpeg-devel':
    ensure => $ensure_dev_pkg,
    name   => $dev_package_name,
  }

}

#
class jpeg::install {

  package { 'jpeg':
    ensure          => $jpeg::ensure_pkg,
    install_options => $jpeg::install_options,
    name            => $jpeg::package_name,
  }

  package { 'jpeg-devel':
    ensure          => $jpeg::ensure_dev_pkg,
    install_options => $jpeg::install_options,
    name            => $jpeg::dev_package_name,
  }

}

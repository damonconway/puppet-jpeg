#
class jpeg::params () {

  case $::osfamily {
    'RedHat': {
      case $::lsbmajdistrelease {
        '5': {
          $dev_package_name = 'libjpeg-devel'
          $package_name     = 'libjpeg'
        }
    
        default: {
          $dev_package_name = 'libjpeg-turbo-devel'
          $package_name     = 'libjpeg-turbo'
        }
      }
    }

    'Debian': {
       $dev_package_name = 'libjpeg-turbo-dev'
       $package_name     = 'libjpeg-turbo8'
    }
  }

}

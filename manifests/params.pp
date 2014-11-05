#
class jpeg::params () {

  case $::osfamily {
    'RedHat': {
      case $::lsbmajdistrelease {
        '5': {
          package_name     = 'libjpeg'
          dev_package_name = 'libjpeg-devel'
        }
    
        default: {
          package_name     = 'libjpeg-turbo'
          dev_package_name = 'libjpeg-turbo-devel'
        }
      }
    }

    'Debian': {
       package_name     = 'libjpeg-turbo8'
       dev_package_name = 'libjpeg-turbo-dev'
    }
  }

}

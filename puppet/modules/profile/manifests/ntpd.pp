#
class profile::ntpd (
  
) inherits profile {
  class { '::openntpd':
    listen => ['127.0.0.1'],
  }
}

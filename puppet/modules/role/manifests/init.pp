#
class role {

  # Keep server in sync with NTP time
  class { '::profile::ntpd':
  }

}

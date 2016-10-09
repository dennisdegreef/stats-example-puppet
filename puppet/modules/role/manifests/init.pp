#
class role {

  package { ['apt-transport-https']:
  }

  # Keep server in sync with NTP time
  class { '::profile::ntpd':
  }

}

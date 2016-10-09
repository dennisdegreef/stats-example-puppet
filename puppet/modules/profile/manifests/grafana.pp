#
class profile::grafana (

) inherits profile {
  class { '::grafana':
  }
}

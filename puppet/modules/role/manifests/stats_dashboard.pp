#
class role::stats_dashboard {
  class { '::profile::grafana':
  }
}

#
class role::stats_collector (
  $stats = true,
) inherits role {

  validate_bool($stats)

  class { '::profile::collectd':
    statsd => $statsd,
    rrd    => false,
  }

}

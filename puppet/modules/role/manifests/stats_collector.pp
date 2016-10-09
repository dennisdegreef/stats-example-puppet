#
class role::stats_collector (
  $stats = true,
) {

  validate_bool($stats)

  class { '::profile::collectd':
    statsd => $statsd,
    rrd    => false,
  }

  class { '::profile::influxdb':
  }

}

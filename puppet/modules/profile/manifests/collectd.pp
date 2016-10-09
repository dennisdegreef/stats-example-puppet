#
class profile::collectd (
  $statsd  = true,
  $rrd     = false,
  $network = true,
) inherits profile {

  validate_bool($statsd)
  validate_bool($rrd)
  validate_bool($network)

  class { '::collectd':
    statsd_enable  => $statsd,
    rrdtool_enable => $rrd,

    network_enable => $network,
  }
}

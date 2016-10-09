#
class profile::influxdb (
) inherits profile {
  class { '::influxdb':
    collectd_enable => true
  }
}

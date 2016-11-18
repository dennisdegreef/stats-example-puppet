
Exec {
  path => [ "/bin/", "/sbin/" , "/usr/bin/", "/usr/sbin/", "/usr/local/bin", "/usr/local/sbin", "~/.composer/vendor/bin/" ]
}

include ::role
include ::role::stats_collector
include ::role::stats_dashboard
include ::composer

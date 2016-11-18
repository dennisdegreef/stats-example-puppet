#
class composer {

  package { ['php5', 'curl']:
    ensure => installed,
  }

  exec { 'install composer':
    command => 'curl -sS https://getcomposer.org/installer | HOME="/vagrant" php && sudo mv composer.phar /usr/local/bin/composer',
    require => Package['curl'],
  }

}

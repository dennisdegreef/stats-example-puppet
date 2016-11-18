<?php

require_once(__DIR__ . '/vendor/autoload.php');

$statsd = new \League\StatsD\Client();
$statsd->configure([
  'host' => '192.168.121.220',
  'namespace' => 'app.example',
]);

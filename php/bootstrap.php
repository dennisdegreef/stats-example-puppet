<?php

require_once(__DIR__ . '/vendor/autoload.php');

$statsd = new \League\StatsD\Client();
$statsd->configure([
  'host' => 'localhost',
  'namespace' => 'app.example',
]);

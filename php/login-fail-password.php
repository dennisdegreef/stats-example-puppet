<?php

include('bootstrap.php');

$statsd->increment('login.fail.invalid_password');

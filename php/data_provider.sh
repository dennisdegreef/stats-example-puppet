#!/bin/bash

while :;
do
	./iterate.sh 10 php login.php;
	./iterate.sh 4  php login-fail-password.php;
	./iterate.sh 2  php login-fail-username.php;
	sleep 1;
done

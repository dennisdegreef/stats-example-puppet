#!/bin/bash

text="<a href='https://github.com'>Release notes</a>"

if [[ ! -z $1 ]];
then
	text="$1"
fi

echo "Deploying: $text"

curl \
	-X POST \
	"http://localhost:8086/write?db=telegraf&precision=s" \
	--data-binary "events title=\"Deployed v10.2.0\",text=\"${text}\",tags=\"example app\" $(date +%s)"

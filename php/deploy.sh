

curl -X POST "http://192.168.121.220:8086/write?db=collectd_db&precision=s" --data-binary "events title=\"Deployed v10.2.0\",text=\"<a href='https://github.com'>Release notes</a>\",tags=\"example app\" $(date +%s)"

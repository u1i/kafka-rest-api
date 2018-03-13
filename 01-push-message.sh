# Produce a message using JSON with the value '{ "foo": "bar" }' to the topic jsonjson
curl -X POST -H "Content-Type: application/vnd.kafka.json.v2+json" \
      -H "Accept: application/vnd.kafka.v2+json" \
      --data '{"records":[{"value":{"foo":"'$RANDOM'"}}]}' "http://localhost:8082/topics/mytopic"


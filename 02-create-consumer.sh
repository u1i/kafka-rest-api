# Create a consumer for JSON data, starting at the beginning of the topic's
# log and subscribe to a topic.
curl -X POST -H "Content-Type: application/vnd.kafka.v2+json" \
      --data '{"name": "my_consumer_instance", "format": "json", "auto.offset.reset": "earliest"}' \
      http://localhost:8082/consumers/my_json_consumer

curl -X POST -H "Content-Type: application/vnd.kafka.v2+json" --data '{"topics":["mytopic"]}' \
 http://localhost:8082/consumers/my_json_consumer/instances/my_consumer_instance/subscription


# Delete index
curl -X DELETE "https://10.0.5.13:31111/hdh-logs-2025-03-21" -u elastic:eSFZ387hx0a94m96B7LcH0AF --insecure

# Update index mapping
# (update mapping.properties.message.properties.stack.type to nested)
curl -X PUT -X PUT "https://10.0.5.13:31111/hdh-logs-2025-03-21/_mapping" \
      -u elastic:eSFZ387hx0a94m96B7LcH0AF --insecure \
      -H 'Content-Type: application/json' -d'
      {
        "properties": {
          "message": {
            "properties": {
              "stack": {
                "type": "nested"
              }
            }
          }
        }
      }'

# Test webpage connexion
# https://appariements.pre-prod-hdh.fr/connexion

# Get indices
curl -X GET "https://10.0.5.13:31111/_cat/indices?v" -u elastic:eSFZ387hx0a94m96B7LcH0AF --insecure

# Get index mapping
curl -X GET "https://10.0.5.13:31111/hdh-logs-2025-03-21/_mapping?pretty"  -u elastic:eSFZ387hx0a94m96B7LcH0AF --insecure


      
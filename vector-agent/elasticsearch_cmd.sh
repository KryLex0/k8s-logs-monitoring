# Delete index
curl -X DELETE "https://192.168.3.88:31111/hdh-logs-2025-03-18" -u elastic:S49v3z9j349t34qGRppEe7tq --insecure

# Update index mapping
# (update mapping.properties.message.properties.stack.type to nested)
curl -X PUT -X PUT "https://192.168.3.88:31111/hdh-logs-2025-03-18/_mapping" \
      -u elastic:S49v3z9j349t34qGRppEe7tq --insecure \
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
curl -X GET "https://192.168.3.88:31111/_cat/indices?v" -u elastic:S49v3z9j349t34qGRppEe7tq --insecure

# Get index mapping
curl -X GET "https://192.168.3.88:31111/hdh-logs-2025-03-18/_mapping?pretty"  -u elastic:S49v3z9j349t34qGRppEe7tq --insecure


      
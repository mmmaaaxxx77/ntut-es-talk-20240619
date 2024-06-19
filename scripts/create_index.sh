#!/bin/bash

# Elasticsearch URL
ES_URL="http://localhost:9200"

# Index name
INDEX_NAME="post"

# Mapping file
MAPPING_FILE="mapping.json"

# Create the index with the mapping
curl -X PUT "$ES_URL/$INDEX_NAME" -H 'Content-Type: application/json' -d @$MAPPING_FILE

echo "Index $INDEX_NAME created successfully."

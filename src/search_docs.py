from elasticsearch import Elasticsearch


def search_docs():
    """
    Connects to Elasticsearch and performs a search query.

    Returns:
        None
    """
    # Connect to Elasticsearch
    es = Elasticsearch(hosts=["http://localhost:9200"])

    # Query string
    query_string = 'NVIDIA OR (AI AND "黃仁勳")'

    # Execute the search query
    response = es.search(
        index="post",
        body={
            "query": {
                "query_string": {
                    "query": query_string,
                }
            }
        },
    )

    # Print the results
    for hit in response["hits"]["hits"]:
        print(
            f"ID: {hit['_id']}, Title: {hit['_source']['title']}, Content: {hit['_source']['content'][:100]}..."
        )


# Call the function to execute the search
search_docs()

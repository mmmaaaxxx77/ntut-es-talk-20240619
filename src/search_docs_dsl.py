from elasticsearch import Elasticsearch
from elasticsearch_dsl import Search, Q


def search_docs():
    """
    Connects to Elasticsearch and performs a search query using elasticsearch-dsl.

    Returns:
        None
    """
    # Connect to Elasticsearch
    client = Elasticsearch(hosts=["http://localhost:9200"])

    # Create a search object
    s = Search(using=client, index="post")

    # Query string
    query_string = 'NVIDIA OR (AI AND "黃仁勳")'

    # Create a query using Q
    q = Q("query_string", query=query_string)

    # Apply the query to the search object
    s = s.query(q)

    # Execute the search query
    response = s.execute()

    # Print the results
    for hit in response:
        print(f"ID: {hit.meta.id}, Title: {hit.title}, Content: {hit.content[:100]}...")


# Call the function to execute the search
search_docs()

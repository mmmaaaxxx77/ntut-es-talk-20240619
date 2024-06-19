from elasticsearch import Elasticsearch, helpers


def add_documents_to_index():
    """
    Connects to Elasticsearch and adds a list of documents to the 'post' index using the bulk API.

    Args:
        None

    Returns:
        None
    """

    # Connect to Elasticsearch
    es = Elasticsearch(hosts=["http://localhost:9200"])

    # Document data
    docs = [
        {
            "_index": "post",
            "_id": "1",
            "_source": {
                "post": {"id": "1", "type": "post", "poster": "小資yp投資理財筆記"},
                "site": {"name": "FACEBOOK", "channel": "小資yp投資理財筆記"},
                "title": "最近的AI話題非常火熱",
                "posttime": "2024-06-15 09:23",
                "author": {"id": "user1", "name": "小資yp投資理財筆記"},
                "content": "最近的AI話題非常火熱，從股票市場中輝達(NVIDIA)的表現...",
            },
        },
        {
            "_index": "post",
            "_id": "2",
            "_source": {
                "post": {"id": "2", "type": "post", "poster": "alvinist"},
                "site": {"name": "alvinist", "channel": "alvinist"},
                "title": "COMPUTEX2024 圓滿落幕啦！",
                "posttime": "2024-06-13 18:50",
                "author": {"id": "user2", "name": "alvinist"},
                "content": "COMPUTEX2024 圓滿落幕啦！ 上禮拜真的過得好充實...",
            },
        },
        {
            "_index": "post",
            "_id": "3",
            "_source": {
                "post": {"id": "3", "type": "post", "poster": "理財周刊"},
                "site": {"name": "example.net", "channel": "國內新聞"},
                "title": "最近很紅的CoWoS到底是什麼？",
                "posttime": "2024-06-18 10:07",
                "author": {"id": "user3", "name": "理財周刊"},
                "content": "CoWoS概念解析 CoWoS (Chip-on-Wafer-on-Substrate)，是一種先進的半導體封裝技術...",
            },
        },
    ]

    # Use bulk API to add documents
    helpers.bulk(es, docs)

    print(f"Added {len(docs)} documents to the index 'post'.")


add_documents_to_index()

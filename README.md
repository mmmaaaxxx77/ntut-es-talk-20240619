# ntut-es-talk-20240619
2024/06/19 北科Talk

# Elasticsearch Example Repository

This repository contains example scripts and code for setting up and interacting with an Elasticsearch cluster.

## Directory Structure

```
.
├── scripts
│   ├── add_docs.sh
│   └── create_index.sh
├── src
│   ├── add_docs.py
│   ├── search_docs_dsl.py
│   └── search_docs.py
├── .gitignore
├── docker-compose.yml
├── mapping.json
└── README.md
```

### scripts

- **add_docs.sh**: Shell script to add documents to the Elasticsearch index.
- **create_index.sh**: Shell script to create an Elasticsearch index with the specified mappings.

### src

- **add_docs.py**: Python script to add documents to the Elasticsearch index.
- **search_docs_dsl.py**: Python script to search documents in Elasticsearch using the Query DSL.
- **search_docs.py**: Python script to search documents in Elasticsearch using a basic query.

### Configuration Files

- **docker-compose.yml**: Docker Compose configuration to set up an Elasticsearch cluster.
- **mapping.json**: JSON file defining the mappings for the Elasticsearch index.

## Getting Started

### Prerequisites

- Docker and Docker Compose
- Python 3.x
- Elasticsearch

### Setup

1. **Clone the repository:**
    ```sh
    git clone <repository_url>
    cd <repository_name>
    ```

2. **Start the Elasticsearch cluster:**
    ```sh
    docker-compose up -d
    ```

3. **Create the Elasticsearch index:**
    ```sh
    ./scripts/create_index.sh
    ```

4. **Add documents to the index:**
    ```sh
    ./scripts/add_docs.sh
    ```

### Python Scripts

Ensure you have the required Python packages installed. You can install them using:
```sh
pip install -r requirements.txt
```

- **add_docs.py**: Run this script to add documents to the Elasticsearch index.
    ```sh
    python src/add_docs.py
    ```

- **search_docs.py**: Run this script to perform a basic search query.
    ```sh
    python src/search_docs.py
    ```

- **search_docs_dsl.py**: Run this script to perform a search query using Elasticsearch Query DSL.
    ```sh
    python src/search_docs_dsl.py
    ```

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Acknowledgments

- [Elasticsearch](https://www.elastic.co/elasticsearch/) for providing a powerful search and analytics engine.
- [Docker](https://www.docker.com/) for simplifying the deployment process.

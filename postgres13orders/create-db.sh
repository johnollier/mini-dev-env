#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
	CREATE DATABASE document_processor;
	CREATE DATABASE order_assessment_db;
	CREATE DATABASE order_completion;
	CREATE DATABASE order_control;
	CREATE DATABASE order_enrichment_db;
	CREATE DATABASE order_processing;
	CREATE DATABASE order_store_db;
EOSQL

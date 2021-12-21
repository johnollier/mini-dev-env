#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
	CREATE DATABASE addressbase;
	CREATE DATABASE application_processing;
	CREATE DATABASE cadence;
	CREATE DATABASE cadence_visibility;
	CREATE DATABASE completion;
	CREATE DATABASE document_processor;
	CREATE DATABASE land_register;
	CREATE DATABASE mi_events;
	CREATE DATABASE order_assessment_db;
	CREATE DATABASE order_completion;
	CREATE DATABASE order_control;
	CREATE DATABASE order_enrichment_db;
	CREATE DATABASE order_processing;
	CREATE DATABASE order_store_db;
	CREATE DATABASE orderstore;
	CREATE DATABASE preprocessing;
	CREATE DATABASE title_staging;
EOSQL

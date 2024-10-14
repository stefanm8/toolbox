FROM python:3.12-slim

RUN pip install pandas numpy requests google-cloud-bigquery db-dtypes llama-index llama-index-tools-code-interpreter



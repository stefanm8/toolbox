FROM python:3.12-slim
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y wget gnupg2 && \
    wget -qO - https://benthos.dev/gpgkey | apt-key add - && \
    echo "deb https://benthos.dev/repo/debian stable main" | tee /etc/apt/sources.list.d/benthos.list && \
    apt-get update && \
    apt-get install -y benthos && \
    apt-get clean && rm -rf /var/lib/apt/lists/*


RUN pip install pandas numpy requests google-cloud-bigquery db-dtypes llama-index llama-index-tools-code-interpreter



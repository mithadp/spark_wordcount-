FROM bitnami/spark:latest

# Salin script Python ke dalam container
COPY scripts/wordcount.py /opt/spark-apps/wordcount.py

# Set working directory
WORKDIR /opt/spark-apps

# Jalankan script menggunakan Spark saat container dimulai
CMD ["spark-submit", "/opt/spark-apps/wordcount.py"]

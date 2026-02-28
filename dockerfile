FROM frappe/erpnext:v15

USER root
RUN apt-get update && apt-get install -y git && apt-get clean

USER frappe

RUN cd /home/frappe/frappe-bench && \
    git clone https://github.com/finbyz/argentina_compliance.git apps/argentina_compliance && \
    ./env/bin/pip install -e apps/argentina_compliance && \
    ./env/bin/pip install -r apps/argentina_compliance/requirements.txt || true

FROM frappe/erpnext:v15

USER frappe

WORKDIR /home/frappe/frappe-bench

# Instalar Argentina Compliance
RUN bench get-app --branch version-15 https://github.com/finbyz/argentina_compliance

# Si usas otra versión o repo, ajusta la URL y branch

USER root

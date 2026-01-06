FROM frappe/erpnext:v15

USER frappe

WORKDIR /home/frappe/frappe-bench

# Instalar Argentina Compliance (sin especificar repo, usa el oficial de FinByz)
RUN bench get-app --branch version-15 https://github.com/finbyz/argentina_compliance.git

# Build de los assets incluyendo la nueva app
RUN bench build --apps frappe,erpnext,argentina_compliance

USER root

EXPOSE 8000

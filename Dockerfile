ARG BASE_IMAGE=frappe/erpnext-worker:version-15

FROM ${BASE_IMAGE}

USER root

# copia archivos de apps
COPY apps.json /home/frappe/frappe-bench/apps.json

USER frappe

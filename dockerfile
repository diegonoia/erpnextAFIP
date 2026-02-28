FROM frappe/erpnext:v15

# Clonar la app dentro de la imagen
RUN cd /home/frappe/frappe-bench && \
    bench get-app https://github.com/finbyz/argentina_compliance.git

# Si la app tiene dependencias Python propias (requirements.txt dentro del repo),
# bench get-app las instala automáticamente. Si no, podés forzarlo con:
# RUN cd /home/frappe/frappe-bench && \
#     /home/frappe/frappe-bench/env/bin/pip install -r apps/argentina_compliance/requirements.txt

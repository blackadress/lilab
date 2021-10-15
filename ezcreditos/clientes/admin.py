from clientes.models import Cliente, Empleado, Solicitud_credito
from django.contrib import admin

# Register your models here.
admin.site.register(Solicitud_credito)
admin.site.register(Cliente)
admin.site.register(Empleado)

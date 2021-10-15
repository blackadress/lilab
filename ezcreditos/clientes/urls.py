from django.contrib import admin
from django.urls import path

from . import views

app_name = "clientes"

urlpatterns = [
    # CLIENTES
    path("clientes", views.ListarClientes.as_view(), name="listar_clientes"),
    path("cliente/<int:pk>", views.DetallesCliente.as_view(), name="nuevo_cliente"),
    # CREDITOS
    path("creditos", views.ListarCreditos.as_view(), name="listar_creditos"),
    path("credito/<int:pk>", views.DetallesCredito.as_view(), name="nuevo_credito"),
    # EMPLEADOS
    path("empleados", views.ListarEmpleados.as_view(), name="listar_empleados"),
    path("empleado/<int:pk>", views.DetallesEmpleado.as_view(), name="nuevo_empleado"),
    # CALCULO PUNTAJE CREDITO IA
    path("puntaje_ia", views.CalculoPuntajeCreditoIA.as_view(), name="puntaje_ia"),
]

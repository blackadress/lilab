from rest_framework import serializers

from clientes.models import Cliente, Empleado


class EmpleadoSerializer(serializers.ModelSerializer):
    class Meta:
        model = Empleado
        fields = (
            "id",
            "perfil",
            "nombres",
            "apellidos",
            "usuario",
        )


class ClienteSerializer(serializers.ModelSerializer):
    class Meta:
        model = Cliente
        fields = ("id", "nombres", "apellidos", "sbs_deuda", "sentinel_puntuacion")

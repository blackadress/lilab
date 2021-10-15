from rest_framework import serializers

from clientes.models import Empleado


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

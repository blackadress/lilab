from clientes.serializers.EmpleadoSerializers import EmpleadoSerializer
from rest_framework import serializers

from .ClienteSerializers import ClienteSerializer
from clientes.models import Solicitud_credito


class CreditoSerializer(serializers.ModelSerializer):
    cliente = ClienteSerializer(read_only=True)
    empleado = EmpleadoSerializer(read_only=True)
    depth = 1

    class Meta:
        model = Solicitud_credito
        fields = (
            "id",
            "monto",
            "evaluado",
            "aceptado",
            "creado_en",
            "modificado_en",
            "cliente",
            "empleado",
        )

        read_only_fields = (
            "creado_en",
            "modificado_en",
        )

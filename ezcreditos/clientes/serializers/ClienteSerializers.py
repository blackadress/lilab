from rest_framework import serializers

from clientes.models import Cliente


class ClienteSerializer(serializers.ModelSerializer):
    class Meta:
        model = Cliente
        fields = (
            "id",
            "nombres",
            "apellidos",
            "sbs_deuda",
            "sentinel_puntuacion",
            "pts_ia",
        )

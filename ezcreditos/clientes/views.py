from random import randrange

from django.shortcuts import render

from rest_framework import generics
from rest_framework.views import APIView
from rest_framework.response import Response

from clientes.models import Cliente, Empleado, Solicitud_credito
from clientes.serializers.ClienteSerializers import ClienteSerializer
from clientes.serializers.EmpleadoSerializers import EmpleadoSerializer
from clientes.serializers.CreditoSerializers import CreditoSerializer

# Create your views here.
class CalculoPuntajeCreditoIA(APIView):
    def get(self, request, format=None):
        puntaje_ia = randrange(1, 11)
        return Response({"puntajeIA": puntaje_ia})


class ListarClientes(generics.ListCreateAPIView):
    # permission_classes = [IsAuthenticated]
    queryset = Cliente.objects.all()
    serializer_class = ClienteSerializer


class DetallesCliente(generics.RetrieveUpdateDestroyAPIView):
    # permission_classes = [IsAuthenticated]
    queryset = Cliente.objects.all()
    serializer_class = ClienteSerializer


class ListarCreditos(generics.ListCreateAPIView):
    # permission_classes = [IsAuthenticated]
    queryset = Solicitud_credito.objects.all()
    serializer_class = CreditoSerializer


class DetallesCredito(generics.RetrieveUpdateDestroyAPIView):
    # permision_classes = [IsAuthenticated]
    queryset = Solicitud_credito.objects.all()
    serializer_class = CreditoSerializer


class ListarEmpleados(generics.ListCreateAPIView):
    # permission_classes = [IsAuthenticated]
    queryset = Empleado.objects.all()
    serializer_class = EmpleadoSerializer


class DetallesEmpleado(generics.RetrieveUpdateDestroyAPIView):
    # permission_classes = [IsAuthenticated]
    queryset = Empleado.objects.all()
    serializer_class = EmpleadoSerializer

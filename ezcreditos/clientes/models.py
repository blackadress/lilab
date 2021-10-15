from django.db import models
from django.contrib.auth.models import User

# Create your models here.
class Cliente(models.Model):
    PUNTUACION_DEUDOR = (
        ("malo", "malo"),
        ("regular", "regular"),
        ("bueno", "bueno"),
    )
    nombres = models.CharField(max_length=200)
    apellidos = models.CharField(max_length=200)
    sbs_deuda = models.IntegerField(null=False, default=0)
    sentinel_puntuacion = models.CharField(
        max_length=7, choices=PUNTUACION_DEUDOR, default="bueno"
    )
    pts_ia = models.IntegerField(null=False, default=6)


class Solicitud_credito(models.Model):
    monto = models.IntegerField(null=False, default=0)
    evaluado = models.BooleanField(default=False)
    aceptado = models.BooleanField(default=False)
    creado_en = models.DateTimeField(auto_now_add=True)
    modificado_en = models.DateTimeField(auto_now=True)

    cliente = models.ForeignKey("Cliente", on_delete=models.SET_NULL, null=True)
    empleado = models.ForeignKey("Empleado", on_delete=models.SET_NULL, null=True)


class Empleado(models.Model):
    PERFIL = (("administrador", "administrador"), ("analista", "analista"))

    perfil = models.CharField(max_length=13, null=False, default="analista")
    nombres = models.CharField(max_length=200)
    apellidos = models.CharField(max_length=200)

    usuario = models.OneToOneField(User, on_delete=models.SET_NULL, null=True)

# Generated by Django 3.2.8 on 2021-10-15 18:56

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('clientes', '0003_rename_visto_solicitud_credito_evaluado'),
    ]

    operations = [
        migrations.AddField(
            model_name='cliente',
            name='pts_ia',
            field=models.IntegerField(default=6),
        ),
    ]
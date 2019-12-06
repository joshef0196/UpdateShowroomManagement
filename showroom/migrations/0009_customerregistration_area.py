# Generated by Django 2.0.3 on 2019-11-29 16:54

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('showroom', '0008_area'),
    ]

    operations = [
        migrations.AddField(
            model_name='customerregistration',
            name='area',
            field=models.ForeignKey(default=1, on_delete=django.db.models.deletion.CASCADE, to='showroom.Area'),
            preserve_default=False,
        ),
    ]

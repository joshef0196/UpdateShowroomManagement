# Generated by Django 2.0.3 on 2019-11-29 19:18

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('showroom', '0013_auto_20191130_0112'),
    ]

    operations = [
        migrations.AddField(
            model_name='area',
            name='branch',
            field=models.ForeignKey(default=3, on_delete=django.db.models.deletion.CASCADE, to='showroom.Branches'),
            preserve_default=False,
        ),
    ]

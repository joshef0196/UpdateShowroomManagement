# Generated by Django 2.0.3 on 2019-12-14 14:59

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('showroom', '0022_auto_20191206_0049'),
    ]

    operations = [
        migrations.AlterField(
            model_name='installmentcollection',
            name='due_date',
            field=models.DateField(),
        ),
        migrations.AlterField(
            model_name='installmentcollection',
            name='payment_date',
            field=models.DateField(blank=True),
        ),
    ]
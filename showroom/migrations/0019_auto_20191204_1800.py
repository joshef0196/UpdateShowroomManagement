# Generated by Django 2.0.3 on 2019-12-04 12:00

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('showroom', '0018_installmentcollection_total_installment'),
    ]

    operations = [
        migrations.AlterField(
            model_name='installmentcollection',
            name='payment_date',
            field=models.DateTimeField(blank=True),
        ),
        migrations.AlterField(
            model_name='saleproducts',
            name='next_installment_amount',
            field=models.FloatField(default=0),
        ),
    ]

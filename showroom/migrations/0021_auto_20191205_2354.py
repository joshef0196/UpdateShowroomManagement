# Generated by Django 2.0.3 on 2019-12-05 17:54

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('showroom', '0020_saleproducts_paid_amount'),
    ]

    operations = [
        migrations.CreateModel(
            name='BrancheUsers',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('full_name', models.CharField(blank=True, max_length=50)),
                ('user_name', models.CharField(max_length=50)),
                ('email', models.CharField(blank=True, max_length=50)),
                ('mobile', models.CharField(blank=True, max_length=50)),
                ('password', models.CharField(max_length=100)),
            ],
            options={
                'verbose_name': 'User',
                'verbose_name_plural': 'Branche Users',
            },
        ),
        migrations.RemoveField(
            model_name='branches',
            name='email',
        ),
        migrations.RemoveField(
            model_name='branches',
            name='mobile',
        ),
        migrations.RemoveField(
            model_name='branches',
            name='password',
        ),
        migrations.RemoveField(
            model_name='branches',
            name='user_name',
        ),
        migrations.RemoveField(
            model_name='installmentcollection',
            name='invoice',
        ),
        migrations.AddField(
            model_name='brancheusers',
            name='branch',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='showroom.Branches'),
        ),
    ]

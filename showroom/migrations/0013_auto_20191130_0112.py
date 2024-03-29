# Generated by Django 2.0.3 on 2019-11-29 19:12

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('showroom', '0012_auto_20191130_0110'),
    ]

    operations = [
        migrations.CreateModel(
            name='CompanyInfo',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('com_name', models.CharField(max_length=150)),
                ('owner_name', models.CharField(max_length=100)),
                ('email', models.CharField(blank=True, max_length=50)),
                ('mobile1', models.CharField(blank=True, max_length=50)),
                ('mobile2', models.CharField(blank=True, max_length=50)),
                ('domain_url', models.CharField(max_length=100)),
                ('company_logo', models.ImageField(blank=True, upload_to='company_logo/')),
                ('staring_year', models.IntegerField()),
                ('address', models.TextField(blank=True, max_length=500)),
                ('status', models.BooleanField(default=True)),
            ],
            options={
                'verbose_name': 'Company',
                'verbose_name_plural': 'Company Information',
            },
        ),
        migrations.RemoveField(
            model_name='content',
            name='branch',
        ),
        migrations.DeleteModel(
            name='Content',
        ),
    ]

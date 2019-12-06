from django.contrib import admin
from .import models
from django.utils.html import format_html

class InstallmentCollectionAdmin(admin.ModelAdmin):
    list_display    = ['branch','customer','total_installment','paid_amount','status']
    list_filter     = ['branch','status']

class CustomerRegistrationAdmin(admin.ModelAdmin):
    list_display    = ['branch','name','mobile','present_address','reference_person','status']
    list_filter     = ['branch','status']

class SaleProductsAdmin(admin.ModelAdmin):
    list_display    = ['branch','customer','payment_type','next_installment_date','sale_date','status']
    list_filter     = ['branch','customer_id__area','status']

admin.site.register(models.CustomerRegistration, CustomerRegistrationAdmin)
admin.site.register(models.SaleProducts, SaleProductsAdmin)
admin.site.register(models.InstallmentCollection, InstallmentCollectionAdmin)
admin.site.register(models.CompanyInfo)
admin.site.register(models.Branches)
admin.site.register(models.BrancheUsers)
admin.site.register(models.Area)
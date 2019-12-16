from django.db import models
from ckeditor.fields import RichTextField
from django.utils import timezone

class CompanyInfo(models.Model):
    com_name         = models.CharField(max_length=150)
    owner_name       = models.CharField(max_length=100)
    email            = models.CharField(max_length=50, blank=True)
    mobile1          = models.CharField(max_length=50, blank=True)
    mobile2          = models.CharField(max_length=50, blank=True)
    domain_url       = models.CharField(max_length=100)
    company_logo     = models.ImageField(upload_to="company_logo/", blank=True)
    staring_year     = models.IntegerField()
    address          = models.TextField(max_length=500, blank=True)
    status           = models.BooleanField(default=True)

    def __str__(self):
        return self.com_name

    class Meta:
        verbose_name = 'Company'
        verbose_name_plural = 'Company Information'

class Branches(models.Model):
    branch_name      = models.CharField(max_length=100)
    proprietor_name  = models.CharField(max_length=100)
    branch_logo      = models.ImageField(upload_to="branch_logo/", blank=True)
    staring_year     = models.IntegerField()
    address          = models.TextField(max_length=500, blank=True)
    status           = models.BooleanField(default=True)

    def __str__(self):
        return self.branch_name

    class Meta:
        verbose_name        ='Branch'
        verbose_name_plural ='Branches'

class BrancheUsers(models.Model):
    branch           = models.ForeignKey(Branches, on_delete=models.CASCADE)
    full_name        = models.CharField(max_length=50, blank=True)
    user_name        = models.CharField(max_length=50, unique=True)
    email            = models.CharField(max_length=50, blank=True)
    mobile           = models.CharField(max_length=50, blank=True)
    password         = models.CharField(max_length=100)

    def __str__(self):
        return self.user_name

    class Meta:
        verbose_name        ='User'
        verbose_name_plural ='Branche Users'

class Area(models.Model): 
    branch         = models.ForeignKey(Branches, on_delete=models.CASCADE)  
    area_name      = models.CharField(max_length=100)
    status         = models.BooleanField(default=True)

    def __str__(self):
        return self.area_name

    class Meta:
        verbose_name        ='Area'
        verbose_name_plural ='Areas'

class CustomerRegistration(models.Model):
    area                  = models.ForeignKey(Area, on_delete=models.CASCADE)
    branch                = models.ForeignKey(Branches, on_delete=models.CASCADE)
    name                  = models.CharField(max_length=50)
    email                 = models.EmailField(max_length=80,blank=True)
    mobile                = models.CharField(max_length=16)
    mobile1               = models.CharField(max_length=16,blank=True)
    nid_number            = models.CharField(max_length=50)
    customer_image        = models.ImageField(upload_to="customer_image/", blank=True)
    nid_image             = models.ImageField(upload_to="nid_image/", blank=True)
    present_address       = models.TextField(blank=True)
    permanent_address     = models.TextField(blank=True)
    profession            = models.CharField(max_length=150,blank=True)
    reference_person      = models.CharField(max_length=50)
    reference_address     = models.CharField(max_length=150)
    reference_mobile      = models.CharField(max_length=15,blank=True)
    reg_date              = models.DateField(auto_now_add=True)
    status                = models.BooleanField(default=True)

    def __str__(self):
        return self.name+" ("+self.mobile+")"

    class Meta:
        verbose_name        ='Customer Registration'
        verbose_name_plural ='Customer Registrations'

class SaleProducts(models.Model):
    branch               = models.ForeignKey(Branches, on_delete=models.CASCADE)
    customer             = models.ForeignKey(CustomerRegistration, on_delete=models.CASCADE)
    product_name         = models.CharField(max_length=100)
    brand_name           = models.CharField(max_length=150, blank=True)
    product_model_number = models.CharField(max_length=100, blank=True)
    payment_types = (
        ("1", "Full Payment"),
        ("2", "Installment"),
    )
    payment_type           = models.CharField(max_length=1, choices=payment_types)
    invoice                = models.IntegerField(blank = True, null=True)
    sale_quantity          = models.IntegerField(default=1)
    sale_unit_price        = models.IntegerField(default=1)
    total_price            = models.FloatField(default=0)
    due_amount             = models.FloatField(default=0)
    paid_amount            = models.FloatField(default=0, blank = True)
    comment                = models.TextField(blank=True)
    next_installment_date  = models.DateField(auto_now_add = False, blank = True, null=True)
    next_installment_amount= models.FloatField(default=0)
    total_installment      = models.IntegerField(default=0, blank = True)
    sale_date              = models.DateField(auto_now_add = False)
    status                 = models.BooleanField(default=True)

    def __str__(self):
        return self.product_name

    class Meta:
        verbose_name        ='Product'
        verbose_name_plural ='Sales Products'

class InstallmentCollection(models.Model):
    branch                   = models.ForeignKey(Branches, on_delete=models.CASCADE)
    customer                 = models.ForeignKey(CustomerRegistration, on_delete=models.CASCADE)
    product                  = models.ForeignKey(SaleProducts, on_delete=models.CASCADE)
    paid_amount              = models.FloatField(default=0)
    due_date                 = models.DateField(auto_now_add=False)
    total_installment        = models.IntegerField(default=0, blank = True)
    payment_date             = models.DateField(auto_now_add=False, blank = True)
    status                   = models.BooleanField(default=True)

    def __str__(self):
        return str(self.customer)+"-"+str(self.product)

    class Meta:
        verbose_name        ='Collection'
        verbose_name_plural ='Installment Collections'



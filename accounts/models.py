from django.db import models

# Create your models here.
class Company(models.Model):
    # name = models.CharField(max_length=100)
    # founded_date = models.DateTimeField(auto_now_add=True)
    # market_value = models.DecimalField(max_digits=10, decimal_places=2)
    id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=255, null=False)
    founded_date = models.DateField(null=False)
    market_value = models.FloatField(null=False)

    def __str__(self):
        return self.name
        # return self.company_name
    class Meta:
        db_table = 'companies'  # 指定表名为 'companies'
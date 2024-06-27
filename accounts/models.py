from django.db import models

# Create your models here.
class Company(models.Model):
    id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=255, null=False)
    founded_date = models.DateField(null=False)
    market_value = models.FloatField(null=False)

    def __str__(self):
        return self.name
    class Meta:
        db_table = 'companies'  

class Employee(models.Model):
    id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=255)
    position = models.CharField(max_length=255)
    company = models.ForeignKey(Company, on_delete=models.CASCADE)

    def __str__(self):
        return self.name
    class Meta:
        db_table = 'employee'
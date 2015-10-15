from django.db import models

# Create your models here.
class WordAnagrams(models.Model):
    word = models.CharField(max_length=40)
    tries = models.IntegerField(default=1)

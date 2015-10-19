from django.db import models

# Create your models here.
class WordAnagrams(models.Model):
    word = models.CharField(max_length=40)
    tries = models.IntegerField(default=1)
    def __unicode__(self):
        return self.word

class Suggestions(models.Model):
    word = models.CharField(max_length=40)
    def __unicode__(self):
        return self.word


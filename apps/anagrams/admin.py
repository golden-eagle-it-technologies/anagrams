from django.contrib import admin

# Register your models here.
from models import WordAnagrams,Suggestions


admin.site.register(WordAnagrams)
admin.site.register(Suggestions)

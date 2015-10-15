#!/bin/python
from django.shortcuts import render

# Create your views here.
# Source came from http://www.dotnetperls.com/anagram-python

def build_dict(path):
    # Load in word file and sort each line.
    alpha = {}
    f = open(path, "r")
    for line in f.readlines():
        line = line.strip()
        key = sorted_line(line)

        # Add each line to a dictionary based on its sorted key.
        if key in alpha:
            v = alpha.get(key) + "," + line
            alpha[key] = v
        else:
            alpha[key] = line
    return alpha

def sorted_line(line):
    # Sort the chars in this line and return a string.
    chars = [c for c in line]
    chars.sort()
    return "".join(chars)

def anagram(alpha, line):
    # Return a list of anagrams from the dictionary.
    # ... Use a sorted string as the key.
    key = sorted_line(line)
    values = alpha.get(key, "NONE")
    return values.split(",")

def home(request):
   render

# Load our dictionary and use it.
alpha = build_dict(r"dictionary.txt")

word = raw_input("please input your word : ")
print word
results = anagram(alpha, word)

print("Anagrams for %s" % word)
print(results)
##################################

#Installation
## git clone https://github.com/mrafieee/anagrams.git
## pip install -r requirements.txt

#Hook trigger
just try one of these:
$cp git-hooks/git-jenkins-trigger.py ./git/hooks/pre-push
$cp git-hooks/pre-push .git/hooks/pre-push

#Notes
- in hook folder names are very impiortant
- in coverage 4.0 method _harvest_data() has been renamed to get_date()
- jenkins sometimes crashes and all plugins installed and some projects data will be removed
- django and git did not work in mac OS x or windows 10 - Research needed

#TODOs
- Some test unites for views.py
- have word stats work in apps/anagrams + DONE
- have word suggestions work + DONE
- adding new words to dictionary feature
- form javascript check for validity - NONE or space recognition
- load balancing on server diagram
- phases diagram
- presentations completion

#References
- http://www.dotnetperls.com/anagram-python
- https://docs.djangoproject.com/
- https://sites.google.com/site/kmmbvnr/home/django-jenkins-tutorial
- piwik
- jenkins

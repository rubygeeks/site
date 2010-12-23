RubyGeeks blog

deploy instructions


## first time

sudo gem install jekyll rdiscount
git clone git://github.com/rubygeeks/site.git
jekyll

point the public directory to your static file webserver

## while deploy

git pull
jekyll 


## automated

put the deploy task in cron for 5 minutes interval

## todo
features not being implemented in this version, and to be done by third party tools

a) use disqus for threaded commenting
b) google analytics
c) twitter and facebook widgets







## instruction for designers
use these appropriately
{{ site.url }}
{{ page.title }}


## writing a blog article





## acknowledgment 
current design and structure inspired by brilliantcorners.org , expect a original design soon


Powered by  [jekyll](http://github.com/mojombo/jekyll).

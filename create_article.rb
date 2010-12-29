#!/usr/bin/env ruby

require 'fileutils'
require 'erb'


def file_write(filepath,content)
  File.open(filepath, 'w') {|f| f.write(content) }
end

def file_read(filepath)
  f = File.open(filepath, 'r') 
  f.readlines.join("")
end
title = ARGV.join(" ")
slugname = ARGV.join("-").downcase

directory_names= "_posts/" + Time.now.strftime("%Y/%m")
date= Time.now.strftime("/%Y-%m-%d-")
article_path= directory_names+date+slugname+'.markdown'
FileUtils.mkdir_p directory_names
#FileUtils.cp 'templates/blog.markdown', article_path

content = file_read('templates/blog.markdown')
content = content.gsub("{title}",title)
template = ERB.new(content)
content = template.result(binding)

 
file_write(article_path,content)
puts "created "+article_path



  
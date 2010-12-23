#!/usr/bin/env ruby

require 'fileutils'

slugname = ARGV.join("-").downcase

directory_names= "_posts/" + Time.now.strftime("%Y/%m")
date= Time.now.strftime("/%Y-%m-%d-")
article_path= directory_names+date+slugname+'.markdown'
FileUtils.mkdir_p directory_names
FileUtils.cp 'template.markdown', article_path
puts "created "+article_path
---
layout: post
date: 2011-01-04T11:35:17-05:00
title: Cron Simulator
excerpt: for a production server for a client at railsfactory, we were facing performance issues we had a good server but during specific times of the day site would become real slow it had over 20 tasks on cron from search indexing, database backups, synchronize with a remote data api, caching etc. we are writing a simulator which would take best,average,worst timing for running of a cron task, and output the number of tasks running at any moment of the time..[]
 
tags:
- Cron
- Simulator
---

## CronSimulator ##

for a production server for a client at railsfactory, we were facing performance issues 

we had a good server but during specific times of the day site would become real slow

it had over 20 tasks on cron from search indexing, database backups, synchronize with a remote data api, caching etc.

we are writing a simulator which would take best,average,worst timing for running of a cron task, and output the number of tasks running at any moment of the time.

later we plan to bring in CPU, memory, disk usage into the simulation

usage
-----

check usage.rb for examples

credits
-------

cronparse.rb has been borrowed from Rufus-Scheduler

[source][1]


  [1]: https://github.com/rubygeeks/CronSimulator
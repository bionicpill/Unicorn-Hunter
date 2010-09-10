#! /usr/local/bin/ree-ruby
unicorns = `ps ax | ack unicorn.rb`
pids = unicorns.split("\n").map { |s| s[/\d+/]}
system "echo sudo kill -9 #{pids.join(' ')}"


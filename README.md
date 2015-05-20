# Capistrano_pm2

PM2 support for Capistrano 3.x.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'capistrano_pm2'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install capistrano_pm2

## Usage

Require in Capfile to use the default task:

```ruby
require 'capistrano/pm2'
```  
**pm2:restart** task will run after **deploy:published** as part of Capistrano's default deploy, or can be run in isolation with `bundle exec cap production pm2:restart`

Configurable options:  
```ruby
set :pm2_config, 'config/pm2.json' # PM2 config path by default
```  

## Tasks list

With config:  
`cap pm2:stop                       # Stop server  `  
`cap pm2:start                      # Start server  `  
`cap pm2:restart                    # Restart server  `  
  
Without config:  
`cap pm2:delete[id]                 # Delete process by id or name`  
`cap pm2:describe[id]               # Describe process by id or name`  
`cap pm2:kill                       # Kill PM2`  
`cap pm2:list                       # List of processes`  
`cap pm2:save                       # Save the processes list`  
`cap pm2:startup                    # Startup script`  


## Contributing

1. Fork it ( https://github.com/ne1ro/capistrano_pm2/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

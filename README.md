# ActiveAdminBbs
ActiveAdmin plugin for `bbs`.

## Requirements
This gem depends on `activeadmin`.

## Installation
Add this line to your application's Gemfile:
```ruby
gem 'active_admin_bbs'
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install active_admin_bbs
```

## Features
### Bbs provided resources maintenance
Following resources were registered:
- Bbs::Avatar
- Bbs::Category
- Bbs::Comment
- Bbs::Topic
- Bbs::User

### Dashboard
Include `ActiveAdminBbs::Dashboard` module into your ActiveAdmin
dashboard, basically located at `app/admin/dashboard.rb`. For example:

```ruby
ActiveAdmin.register_page 'Dashboard' do
  include ActiveAdminBbs::Dashboard
end
```

Note that the charts of Dashboard module query database directly.
When your database is getting much the records, you should reconcider another way of drawing charts.

## Contributing
1. Fork it ( https://github.com/bm-sms/active_admin_bbs )
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create new Pull Request

## License
The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

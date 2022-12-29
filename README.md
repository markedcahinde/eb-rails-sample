# eb-rails-sample
Sample Rails application to run on Elasticbeanstalk

---

This sample application is set to run on rails 6 as required by the Gemfile too. It aims to rollout a sample rails application to Elasticbeanstalk with following considerations

1. Use of ebextensions to configure software and infrastructure
2. Use of platform hooks to allow use of cached installed gems

The following are what implemented this package:

- Created an EC2 instance running Amazon Linux 2
- Installed rbenv and enabled ruby version 3.0.5 to match EB platform
- Installed bundler 2.3.26 gem to match EB platform
- Installed rails version 6.1
- Generate new rails project using `rails new eb-rails`
- Update Gemfile after initialization from `gem "rails", "~> 6.1.0"` to gem `"rails", "6.1.0"`
- Run bundle update to make changes take effect
- Overwrite Gemfile from rails command with the one in this repo
- Set local path for gems through `bundle config set --local path build/gems`
- Installed remaining gems from the new Gemfile via `bundle install`
- Generate a welcome page through `rails generate controller WelcomePage welcome`
- Update `app/views/welcome_page/welcome.html.erb` with

```
<h1>Welcome!</h1>
<p>This is the front page of my first Rails application on Elastic Beanstalk.</p>
```

- Update `config/routes.rb` to

```
Rails.application.routes.draw do
  get 'welcome_page/welcome'
  root 'welcome_page#welcome'
end
```

- Then compile assets by `bundle exec rails assets:precompile`

To test the code, server is ran by rails through
`rails server` to enable development environment, and
`rails server -e production` to enable production environment

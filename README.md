# Rails Template

Rails 7.1 application template that includes TailwindCSS, Stimulus and Vite.

### Instructions

1. Clone this repository (replace `your-project-name`)

```
git clone --depth=1 --branch=main git@github.com:grascovit/rails-template.git your-project-name && cd your-project-name && rm -rf .git .github
```

2. Open `config/application.rb` and rename `PlaceholderName` to your project's name in camel case (e.g. `YourProjectName`)
3. Go to `config/database.yml` and replace all occurrences of `placeholder_name` with your project's name in snake case (e.g. `your_project_name`)
4. Go to `config/cable.yml` and replace all occurrences of `placeholder_name` with your project's name in snake case (e.g. `your_project_name`)
5. Run `rails credentials:edit` to generate new `config/credentials.yml.enc` and `config/master.key` files (only commit the `config/credentials.yml.enc` file)
6. Open `app/views/layouts/application.html.erb` and replace the `<title>` with your project name
7. Go to `app/mailer/application_mailer.rb` and replace `no-reply@placeholder.com` with your email.
8. Remember to set the credentials from your email service in `config/environments/production.rb` before deploying.
9. Run `bundle install`
10. Run `yarn install` (or `npm install`)
11. Run `rails db:setup`
12. Run the project with `foreman start -f Procfile.dev`

### Tools

#### [RSpec](https://github.com/rspec/rspec-rails)
You can run your test suite with `bundle exec rspec`.

#### [Rubocop](https://github.com/rubocop/rubocop)
Static code analyzer that can be run with `rubocop --require rubocop-rails` (or `rubocop --require rubocop-rails -A` to apply Rubocop's suggestions).

You can also tweak its settings in `.rubocop.yml`.

#### [Pry](https://github.com/pry/pry)
Runtime developer console very useful to debug that can be used by inserting `binding.pry` in the code.

To use it, run the app with `rails s` in one terminal and `bin/vite dev` in another instead of using `foreman start -f Procfile.dev`.

#### [dotenv](https://github.com/bkeepers/dotenv)
Load environment variables that can be accessed via `ENV`. Create the `.env` file and define it like `VARIABLE_NAME=123`.

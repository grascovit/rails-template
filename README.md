# Rails Template

Rails 7.1 application template that includes TailwindCSS, Stimulus and Vite.

### Instructions

1. Clone this repository (replace `your-project-name`)

```
git clone --depth=1 --branch=features/user-authentication git@github.com:grascovit/rails-template.git your-project-name && cd your-project-name && rm -rf .git .github
```

2. Open `config/application.rb` and rename `PlaceholderName` to your project's name in camel case (e.g. `YourProjectName`)
3. Go to `config/database.yml` and replace all occurrences of `placeholder_name` with your project's name in snake case (e.g. `your_project_name`)
4. Go to `config/cable.yml` and replace all occurrences of `placeholder_name` with your project's name in snake case (e.g. `your_project_name`)
5. Run `rails credentials:edit` to generate new `config/credentials.yml.enc` and `config/master.key` files (only commit the `config/credentials.yml.enc` file)
6. Replace the `<title>` with your project name in `app/views/layouts/application.html.erb` and `app/views/layouts/authentication.html.erb`.
7. Go to `app/mailer/application_mailer.rb` and replace `no-reply@placeholder.com` with your email.
8. Replace `PlaceholderName` with your project name in both `config/locales/mailers/en.yml` and `config/locales/views/pt-BR.yml`. 
9. Run `bundle install`
10. Run `yarn install` (or `npm install`)
11. Run `rails db:setup`
12. Run the project with `foreman start -f Procfile.dev`

The following environment variable is required:
- `JWT_SECRET`: to generate the magic link token for the user authentication

The following environment variables are required before deploying to production:
- `BASE_URL` (e.g. `https://your-project-name.com`)
- `MAILER_SERVER` (e.g. `smtp.your-email-provider.com`)
- `MAILER_PORT` (e.g. `587`)
- `MAILER_DOMAIN` (e.g. `yourprojectname.com`)
- `MAILER_USERNAME`
- `MAILER_PASSWORD`
- `RAILS_MASTER_KEY` (generate after running `rails credentials:edit`)

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

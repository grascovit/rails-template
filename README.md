# Rails Template

Rails 7 application template that includes TailwindCSS, Stimulus and Vite.

### Instructions

1. Clone this repository (replace `your-project-name`)

```
git clone git@github.com:grascovit/rails-template.git your-project-name
```

2. Enter the project folder

```
cd your-project-name
```

3. Open `config/application.rb` and rename `PlaceholderName` to your project's name in camel case (e.g. `YourProjectName`)
4. Go to `config/database.yml` and replace all occurrences of `placeholder_name` with your project's name in snake case (e.g. `your_project_name`)
5. Run `bundle install`
6. Run `yarn install` (or `npm install`)
6. Run `rails db:setup`
7. Run the project with `foreman start -f Procfile.dev`

### Tools

#### [RSpec](https://github.com/rspec/rspec-rails)
You can run your test suite with `bundle exec rspec`.

#### [Rubocop](https://github.com/rubocop/rubocop)
Static code analyzer that can be run with `rubocop --require rubocop-rails` (or `rubocop --require rubocop-rails -A` to apply Rubocop's suggestions).

You can also tweak its settings in `.rubocop.yml`.

#### [Pry](https://github.com/pry/pry)
Runtime developer console very useful to debug that can be used by inserting `binding.pry` in the code.

To use it, run the app with `rails s` in one terminal and `bin/vite dev` in another instead of using `foreman start -f Procfile.dev`.
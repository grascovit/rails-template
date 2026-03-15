# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

Rails 8.1 template with PostgreSQL, Vite, Tailwind CSS 4, Stimulus, Turbo, RSpec, and Rubocop. The `features/user-authentication` branch adds a minimal User model with JWT-based magic link authentication (no passwords).

## Commands

**Development:**
```bash
bin/setup              # Install deps, prepare DB, clear logs/tmp
bin/dev                # Start Rails + Vite dev servers via foreman
```

**Testing:**
```bash
bundle exec rspec                  # Run all tests
bundle exec rspec spec/models/user_spec.rb  # Run a single file
```

**Linting:**
```bash
bin/rubocop            # Run Rubocop with Rails plugin
bin/rubocop -A         # Auto-correct offenses
```

**Database:**
```bash
bin/rails db:prepare   # Create DB if needed + run migrations
bin/rails db:migrate
```

## Architecture

### Frontend

JavaScript and CSS live in `app/frontend/` (not `app/assets/`). Vite bundles everything via `vite_rails`. Entry points are in `app/frontend/entrypoints/` — each layout has its own JS entrypoint (`application.js`, `authentication.js`). Stimulus controllers are auto-discovered via glob in `app/frontend/controllers/index.js`.

Tailwind CSS 4 is imported through `app/frontend/entrypoints/tailwind.css` using the `@tailwindcss/vite` plugin (no separate config file needed).

`Procfile.dev` runs two processes: `bin/rails s -p 3000` and `bin/vite dev`.

### Authentication (on `features/user-authentication`)

Magic link flow — no passwords:
1. User submits email → `MagicLinksController#create` finds/creates User, sends email via `UserMailer`
2. Email contains a link with a JWT token (30-minute expiry, signed with `JWT_SECRET`)
3. `SessionsController#create` validates the token, stores `session[:user_id]`

The `Authenticable` concern (included in `ApplicationController`) provides `current_user`, `user_signed_in?`, and `authenticate_user!` helpers available in all controllers and views.

### Email

- Development: `letter_opener` opens emails in the browser automatically
- Production: Mailgun (`config/initializers/mailgun.rb`)

### Localization

Supports English (default) and Portuguese-Brazil. Translation files in `config/locales/` are organized by category: controllers, models, views, mailers.

## Key Configuration

**Rubocop:** Ruby 3.4.3 target, 120-character line limit. Excludes `bin/`, `db/`, `vendor/`, and relaxes block/module length for `spec/` and `config/`.

**RSpec:** Transactional fixtures, random ordering, FactoryBot with `Faker`, Shoulda::Matchers. Failed examples written to `spec/examples.txt`.

**Required environment variables** (use `.env` in development via `dotenv-rails`):
- `JWT_SECRET` — magic link token signing
- `BASE_URL` — application domain (production)
- `MAILGUN_API_KEY`, `MAILGUN_DOMAIN` — email (production)
- `RAILS_MASTER_KEY` — credentials decryption (production)

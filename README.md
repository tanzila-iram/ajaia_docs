<img width="1802" height="1049" alt="image" src="https://github.com/user-attachments/assets/89c01129-5be5-41fa-b56d-c0e9ffdbc36d" />


# Ajaia Docs

Ajaia Docs is a lightweight document collaboration application built with **Ruby on Rails 8**. It allows users to create, edit, organize, and share rich-text documents with other registered users through a clean and responsive interface.

---

## Features

- User authentication
- Create, edit, view, and delete documents
- Rich text editing using Action Text (Trix Editor)
- Share documents with other registered users
- View documents shared with you
- Responsive Bootstrap UI
- PostgreSQL database
- Hotwire (Turbo) powered interactions

---

## Tech Stack

- Ruby 3.x
- Ruby on Rails 8
- PostgreSQL
- Bootstrap 5
- Hotwire (Turbo)
- Action Text (Trix Editor)

---

# Getting Started

## Prerequisites

Make sure the following software is installed:

- Ruby 3.x
- Rails 8.x
- PostgreSQL
- Bundler
- Git

You can verify your installation using:

```bash
ruby -v
rails -v
bundle -v
psql --version
```

---

## Clone the Repository

```bash
git clone https://github.com/tanzila-iram/ajaia_docs.git

cd ajaia_docs
```

---

## Install Dependencies

```bash
bundle install
```

---

## Database Configuration

Update `config/database.yml` with your local PostgreSQL credentials.

Example:

```yaml
default: &default
  adapter: postgresql
  encoding: unicode
  host: localhost
  port: 5433
  username: postgres
  password: password
  pool: 5
```

---

## Create and Setup the Database

Run the following commands:

```bash
rails db:create
rails db:migrate
```

If seed data is available:

```bash
rails db:seed
```

---

## Running the Application

Start the Rails server:

```bash
bin/dev
```

or

```bash
rails server
```

Open your browser and visit:

```
http://localhost:3000
```

---

## Running Tests

Run the test suite using:

```bash
rails test
```

or, if using RSpec:

```bash
bundle exec rspec
```

---

## Production Environment Variables

The following environment variables are required when deploying the application:

| Variable | Description |
|----------|-------------|
| `DATABASE_URL` | PostgreSQL connection string |
| `RAILS_MASTER_KEY` | Rails credentials master key |
| `SECRET_KEY_BASE` | Rails secret key |

---

## Project Structure

```
app/
├── controllers/
├── models/
├── views/
├── helpers/
├── javascript/

config/
db/
public/
storage/
```

---

## Application Workflow

1. Register a new account.
2. Log in to the application.
3. Create a new document.
4. Write and format content using the rich text editor.
5. Edit or delete your own documents.
6. Share documents with other registered users.
7. Access documents that have been shared with you.

---

## Future Improvements

- Email invitations for sharing
- Document version history
- Real-time collaborative editing
- Search and filtering
- Notifications
- Role-based permissions

---

## Deployment

The application is deployment-ready and can be hosted on platforms such as:

- Render
- Railway
- Fly.io
- AWS EC2

---

## Author

**Tanzila Iram**

GitHub: https://github.com/tanzila-iram

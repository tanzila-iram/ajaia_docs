<img width="1802" height="1049" alt="image" src="https://github.com/user-attachments/assets/89c01129-5be5-41fa-b56d-c0e9ffdbc36d" />
# Ajaia Docs

Ajaia Docs is a lightweight document management and sharing application built with Ruby on Rails 8.

The application allows users to create, edit, view, delete, and share rich-text documents through a clean and responsive interface.

## Features

- Create documents
- View documents
- Edit documents
- Delete documents
- Rich text editing using Action Text and Trix
- Share documents with other users
- View documents shared with you
- Responsive Bootstrap interface
- PostgreSQL database
- Hotwire and Turbo-powered interactions

## Tech Stack

- Ruby 3.2
- Ruby on Rails 8.1
- PostgreSQL
- Bootstrap 5
- Hotwire
- Turbo
- Action Text
- Trix Editor

## Local Setup

### Prerequisites

Install the following:

- Ruby 3.2
- Rails 8.1
- PostgreSQL
- Bundler
- Git

Check the installed versions:

```bash
ruby -v
rails -v
bundle -v
psql --version
```

### Clone the Repository

```bash
git clone https://github.com/tanzila-iram/ajaia_docs.git
cd ajaia_docs
```

### Install Dependencies

```bash
bundle install
```

### Configure PostgreSQL

Update the local database credentials in `config/database.yml`.

The default local configuration used by this project is:

```yaml
default: &default
  adapter: postgresql
  encoding: unicode
  host: localhost
  port: 5433
  username: postgres
  password: password
  pool: <%= ENV.fetch("RAILS_MAX_THREADS") { 5 } %>
```

Make sure PostgreSQL is running on port `5433`.

### Create and Prepare the Database

```bash
bin/rails db:create
bin/rails db:migrate
```

### Start the Application

```bash
bin/rails server
```

Open the application at:

```text
http://localhost:3000
```

## Running Tests

```bash
bin/rails test
```

## Application Workflow

1. Open the documents page.
2. Create a new document.
3. Enter the document title and rich-text content.
4. Save the document.
5. Open an existing document to view it.
6. Edit or delete a document.
7. Share a document with another user.
8. View documents that have been shared with you.

## Production Environment Variables

The following environment variables are required for deployment:

| Variable | Description |
|---|---|
| `DATABASE_URL` | PostgreSQL production connection URL |
| `RAILS_MASTER_KEY` | Rails credentials encryption key |
| `RAILS_ENV` | Rails environment, set to `production` |

## Deployment

The application is configured for deployment using a PostgreSQL database and can be hosted on Render.

## Project Structure

```text
app/
├── controllers/
├── models/
├── views/
├── helpers/
└── javascript/

config/
db/
public/
storage/
test/
```

## Assumptions

- Authentication is outside the scope of the current implementation.
- The application uses the existing user records for document sharing.
- Document sharing is available only for users already present in the database.
- The application focuses on document CRUD, rich-text editing, and sharing functionality.

## Future Improvements

- Login and registration
- Password recovery
- Email invitations
- Document version history
- Real-time collaborative editing
- Search and filtering
- Notifications
- Role-based permissions

## Author

**Tanzila Iram**

GitHub: https://github.com/tanzila-iram

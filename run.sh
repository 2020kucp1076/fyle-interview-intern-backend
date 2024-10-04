#!/bin/bash

export FLASK_APP=core/server.py
export FLASK_ENV=development

# Remove the existing SQLite database
rm -f core/store.sqlite3

# Run database migrations
flask db upgrade -d core/migrations/

# Start the server using Gunicorn
gunicorn -c gunicorn_config.py core.server:app

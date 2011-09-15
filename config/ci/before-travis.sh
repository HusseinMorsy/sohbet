# Start xvfb in preparation for cucumber & jasmine
sh -e /etc/init.d/xvfb start

# Create a database.yml for the right database
echo "Setting up database.yml for $DB"
cp config/database.yml.$DB config/database.yml

# Set up database
echo "Creating databases for $DB and loading schema"
bundle exec rake db:create
bundle exec rake db:schema:load


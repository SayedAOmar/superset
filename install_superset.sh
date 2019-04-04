pip3 install superset

# Downgrade packages to be compatable with this version of superset

sudo pip3 install SQLAlchemy==1.3.0b1
sudo pip3 install pandas==0.23.4

# Create an admin user (you will be prompted to set a username, first and last name before setting a password)
fabmanager create-admin --app superset

# Initialize the database
superset db upgrade

# Load some data to play with
superset load_examples

# Create default roles and permissions
superset init

# To start a development web server on port 8088, use -p to bind to another port
superset runserver -d
# djangoejabberdreactnative

I am working on chatservices like whatsapp for web and app .

XMPP ejabberd server based on ubuntu 16.04

Rest API as ejabberd Rest API

for web backend as django

for mobile will use react native


if anyone want to contribute in this project , please drop mail on prabhatiitbhu@gmail.com

# srv record setup for domain

My personal domain is chatapp.enopits.com and so I created the following DNS records:

jabber-gw            CNAME    chatapp.enopits.com.
_xmpp-client._tcp    SRV      5 0 5222 jabber-gw.chatapp.enopits.com.
_xmpp-server._tcp    SRV      5 0 5269 jabber-gw.chatapp.enopits.com.

# postgresql user and database 
```
sudo apt-get install -y postgresql postgresql-contrib

sudo su - postgres

psql

CREATE DATABASE chatappdb;
CREATE USER chatappuser WITH PASSWORD 'chatapppassword';
ALTER ROLE chatappuser SET default_transaction_isolation TO 'read committed';
ALTER ROLE chatappuser SET timezone TO 'Asia/Kolkata';
GRANT ALL PRIVILEGES ON DATABASE chatappdb TO chatappuser;

\q

psql -d chatappdb -f /home/ubuntu/djangoejabberdreactnative/ejabberd/master/sql/pg.sql

exit

/etc/init.d/postgresql restart
```
# mysql user and database 

```
sudo apt-get update
sudo apt-get -y install mysql-server

# set your root password 

mysql -u root -p

CREATE DATABASE chatappdb;

CREATE USER 'chatappuser'@'localhost' IDENTIFIED BY 'chatapppassword';

GRANT ALL PRIVILEGES ON chatappdb.* TO 'chatappuser'@'localhost';

FLUSH PRIVILEGES;

exit
mysql -u root -p  chatappdb < /home/ubuntu/djangoejabberdreactnative/ejabberd/sql/mysql.sql

sudo service mysql restart

```

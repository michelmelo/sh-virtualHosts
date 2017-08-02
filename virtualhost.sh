echo "Please enter project relative path ( example: project/www ): "
read documentRoot

echo "Please Enter ServerName ( example: project.local )"
read serverName

SITE_FOLDER='/var/www/'

# sudo chmod -R 777 /etc/apache2/extra/
# sudo chmod -R 777 /private/etc/hosts

echo '<VirtualHost *:80>
    ServerAdmin webmaster@dummy-host2.example.com
    DocumentRoot "'$SITE_FOLDER$documentRoot'"
    ServerName '$serverName'
    ErrorLog "/private/var/log/apache2/dummy-host2.example.com-error_log"
    CustomLog "/private/var/log/apache2/dummy-host2.example.com-access_log" common
</VirtualHost>' >> /etc/apache2/extra/$serverName.conf

# sudo echo '127.0.0.1 '$serverName >> /private/etc/hosts

#sudo apachectl restart

#sudo chmod -R 755 /etc/apache2/extra/
#sudo chmod -R 755 /private/etc/hosts

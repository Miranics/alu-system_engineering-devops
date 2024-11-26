# run sed command with puppet to fix the mistake of file name
# class-wp-locale.php instead of class-wp-locale.phpp in wp-settings.php
exec { 'fix file name':
  command  => 'sed -i "s/class-wp-locale.phpp/class-wp-locale.php/g" /var/www/html/wp-settings.php',
  provider => 'shell'
}

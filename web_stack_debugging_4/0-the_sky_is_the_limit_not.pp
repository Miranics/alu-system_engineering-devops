# increase ULIMTI

# declare nginx service and make sure it is running
service { 'nginx':
  ensure => running,
}

exec { 'increase ULIMIT':
  # replace with new ULIMIT value
  command  => 'sed -i "s/ULIMIT=\"-n 15\"/ULIMIT=\"-n 4000\"/g" /etc/default/nginx',
  provider => 'shell',
  # tells nginx to restart
  notify   => Service['nginx']
}

hiera_include('classes')

httpauth { 'icingaadmin':
  ensure    => present,
  mechanism => basic,
  realm     => '',
  password  => 'password',
  file      => '/etc/icinga/htpasswd.users',
  require   => Package['icinga'],
}

file { '/etc/icinga/htpasswd.users':
  ensure  => present,
  owner   => 'www-data',
  group   => 'www-data',
  require => Httpauth['icingaadmin'],
}

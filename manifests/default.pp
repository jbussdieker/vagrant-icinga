hiera_include('classes')

package { 'icinga':
  ensure  => present,
  require => Apt::Source['formorer-icinga'],
}
->
file { '/etc/icinga/htpasswd.users':
  owner => 'www-data',
  group => 'www-data',
}
->
httpauth { 'icingaadmin':
  ensure    => present,
  mechanism => basic,
  realm     => '',
  password  => 'password',
  file      => '/etc/icinga/htpasswd.users',
}
->
service { 'icinga':
  ensure => running,
}

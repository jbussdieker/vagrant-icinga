hiera_include('classes')

package { 'icinga':
  ensure  => present,
  require => Apt::Source['formorer-icinga'],
}
->
service { 'icinga':
  ensure => running,
}

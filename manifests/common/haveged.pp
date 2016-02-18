package { 'haveged':
  ensure => 'latest',
}
service { 'haveged':
  ensure   => running,
  require => Package['haveged'],
}

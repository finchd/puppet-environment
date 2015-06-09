package { 'haveged':
  ensure => 'latest';
}
service { 'haveged':
  ensure   => running,
}

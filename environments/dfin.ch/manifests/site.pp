node 'combusken.dfin.ch' {
  package { 'vim':
    ensure => present,
  }
  import 'common/unbound.pp'
  import 'common/haveged.pp'
}



include ::derp

node 'combusken.dfin.ch' {
  package { 'vim':
    ensure => present,
  }
  #  import 'common/unbound.pp'
  import 'manifests/common/haveged.pp'
}



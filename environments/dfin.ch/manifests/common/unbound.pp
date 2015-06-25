class { 'unbound':
    interface            => ['::0','0.0.0.0'],
      access             => ['127.0.0.1','10.0.0.0/20','::1'],
      custom_server_conf => [ 'include: "/etc/unbound/conf.d/*.conf"'
}

unbound::record { 'sg1.dfin.ch':
        type  => 'A',
      content => '209.141.53.173',
          ttl => '14400',
}

#OpenNIC alternate first-level domains
#unbound::forward {'.bbs':
#  address => [
#    '74.207.241.202', #fvz-rec-us-ca-01
#    '23.226.230.72',  #fvz-rec-us-wa-01
#  ]
#}

#OpenNIC alternate first-level domains
#unbound::forward {'.dyn':
#  address => [
#    '74.207.241.202', #fvz-rec-us-ca-01
#    '23.226.230.72',  #fvz-rec-us-wa-01
#  ]
#}

#OpenNIC alternate first-level domains
#unbound::forward {'.free':
#  address => [
#    '74.207.241.202', #fvz-rec-us-ca-01
#    '23.226.230.72',  #fvz-rec-us-wa-01
#  ]
#}

#OpenNIC alternate first-level domains
#unbound::forward {'.fur':
#  address => [
#    '74.207.241.202', #fvz-rec-us-ca-01
#    '23.226.230.72',  #fvz-rec-us-wa-01
#  ]
#}

#OpenNIC alternate first-level domains
#unbound::forward {'.geek':
#  address => [
#    '74.207.241.202', #fvz-rec-us-ca-01
#    '23.226.230.72',  #fvz-rec-us-wa-01
#  ]
#}


#OpenNIC alternate first-level domains
#unbound::forward {'.gopher':
#  address => [
#    '74.207.241.202', #fvz-rec-us-ca-01
#    '23.226.230.72',  #fvz-rec-us-wa-01
#  ]
#}

#OpenNIC alternate first-level domains
#unbound::forward {'.indy':
#  address => [
#    '74.207.241.202', #fvz-rec-us-ca-01
#    '23.226.230.72',  #fvz-rec-us-wa-01
#  ]
#}

#OpenNIC alternate first-level domains
#unbound::forward {'.micro':
#  address => [
#    '74.207.241.202', #fvz-rec-us-ca-01
#    '23.226.230.72',  #fvz-rec-us-wa-01
#  ]
#}

#OpenNIC alternate first-level domains
#unbound::forward {'.neo':
#  address => [
#    '74.207.241.202', #fvz-rec-us-ca-01
#    '23.226.230.72',  #fvz-rec-us-wa-01
#  ]
#}

#OpenNIC alternate first-level domains
#unbound::forward {'.null':
#  address => [
#    '74.207.241.202', #fvz-rec-us-ca-01
#    '23.226.230.72',  #fvz-rec-us-wa-01
#  ]
#}

#OpenNIC alternate first-level domains
#unbound::forward {'.oss':
#  address => [
#    '74.207.241.202', #fvz-rec-us-ca-01
#    '23.226.230.72',  #fvz-rec-us-wa-01
#  ]
#}

#OpenNIC alternate first-level domains
#unbound::forward {'.oz':
#  address => [
#    '74.207.241.202', #fvz-rec-us-ca-01
#    '23.226.230.72',  #fvz-rec-us-wa-01
#  ]
#}

#OpenNIC alternate first-level domains
#unbound::forward {'.parody':
#  address => [
#    '74.207.241.202', #fvz-rec-us-ca-01
#    '23.226.230.72',  #fvz-rec-us-wa-01
#  ]
#}

#OpenNIC alternate first-level domains
#unbound::forward {'.pirate':
#  address => [
#    '74.207.241.202', #fvz-rec-us-ca-01
#    '23.226.230.72',  #fvz-rec-us-wa-01
#  ]
#}

#ICANN common root
unbound::forward { '.':
  address => [
    '208.67.222.222',  #OpenDNS
    '208.67.220.220',  #OpenDNS
    '8.8.8.8',         #Google DNS
    '8.8.4.4',         #Google DNS
  ]
}

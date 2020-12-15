#
#
class profile::linux {
  # Adding Bind-util 
  # Contains nslookup for basic network troubleshooting
  package { 'bind-utils':
    ensure => latest,
  }

  # Adding Traceroute 
  # Included to check IP routing
  package { 'traceroute':
    ensure => latest,
  }

  # Adding motd 
  # Ths was added since it is an easy demo option
  class { 'motd':
    content => 'Welcome to the Puppet demo !\n',
  }

}
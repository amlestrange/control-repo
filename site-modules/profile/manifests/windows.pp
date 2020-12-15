# Adding chocolately for Windows package management
#
class profile::windows {
  Package { provider => chocolatey, }
  class { 'chocolatey':
    choco_install_location => 'C:\ProgramData\chocolatey',
  }
  package { 'firefox':
    ensure   => 'latest',
    provider => 'chocolatey',
  }
  package { 'javaruntime':
    ensure   => '8.0.231',
    provider => 'chocolatey',
  }
  package { '7zip':
    ensure   => '19.0',
    provider => 'chocolatey',
  }
}

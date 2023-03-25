package { 'python3-pip':
  ensure => installed,
}

package { 'python3-dev':
  ensure => installed,
}

package { 'build-essential':
  ensure => installed,
}

package { 'libssl-dev':
  ensure => installed,
}

package { 'libffi-dev':
  ensure => installed,
}

package { 'flask':
  ensure   => '2.1.0',
  provider => 'pip3',
  require  => [
    Package['python3-pip'],
    Package['python3-dev'],
    Package['build-essential'],
    Package['libssl-dev'],
    Package['libffi-dev'],
  ],
}


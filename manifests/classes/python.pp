class buildenv::python {

  package {'python-dev':
    ensure => present,
    name   => $operatingsystem ? {
      /RedHat|Fedora|CentOS/ => 'python-devel',
      /Debian|Ubuntu/        => 'python-dev',
    }
  }

}

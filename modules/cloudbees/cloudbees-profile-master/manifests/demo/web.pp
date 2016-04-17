class profile::demo::web (
  $install_dir = '/opt/wordpress',
  $db_user = hiera('wordpress::db_user'),
  $db_password = hiera('wordpress::db_password')
) {
  include ::mysql::client
  
  class { 'apache':
    default_vhost => false,
  }

  class { '::apache::mod::php': }

  apache::vhost { $::fqdn:
    docroot => $install_dir,
    port    => 80,
  }

  apache::listen { '80': }

  class { '::mysql::bindings::php':
    notify => Class['::apache'],
  }

  class { '::wordpress':
    db_user        => $db_user,
    db_password    => $db_password,
    create_db      => true,
    create_db_user => true,
  }
}

class base::ssh inherits base::parama {
#case $osfamily {
#	'RedHat': { $ssh_name='sshd'}
#	'Debian': { $ssh_name='ssh'}
#	'default': { warning('OS not supported')}
#}
#	$ssh_name = $osfamily ? {
#		'RedHat' => 'sshd',
#		'Debian' => 'ssh',
#		default => 'value',
#	}
	

	package { 'openssh-package':
		name => 'openssh',
		ensure => present,
		before => File['/etc/ssh/sshd_config'],
		
	}
	file { '/etc/ssh/sshd_config':
		ensure => file,
		owner => 'root',
		group => 'root',
		source => 'puppet:///modules/base/sshd_config',
		notify => Service['ssh-service'],
	}
	service {'ssh-service':
#		name  => $base::params::ssh_name,
		name => ssh_name,
		ensure => runing,
		enble => true,
	}

}

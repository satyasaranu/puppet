class ntp::file { 
	$template = $ntp::params::template
	$servers = $ntp::params::default_server	
	file { '/etc/ntp.conf':
		ensure => file,
		require => Package['ntp'],
		content => template("ntp/${template}.erb"),
	}
}

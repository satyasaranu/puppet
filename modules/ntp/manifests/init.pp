class ntp ($package = $ntp::params::package_name) inherits ntp::params  {
	package { $package:
	ensure => present,
	}

#	include ntp::params	
	include ntp::file 
	include ntp::service
}

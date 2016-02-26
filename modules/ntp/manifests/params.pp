class ntp::params {
        case $::operatingsystem {
                'ubuntu': { 
			$template = 'ntp_ubuntu.conf' 
			$service_name = 'ntp'
			$default_server = ["0.ubuntu.pool.ntp.org",
					   "1.ubuntu.pool.ntp.org",
					   "2.ubuntu.pool.ntp.org",
					   "3.ubuntu.pool.ntp.org",]
		}
                'redhat': { 
			$template = 'ntp_redhat.conf'
			$service_name = 'ntpd'
			$default_server = ["0.rhel.pool.ntp.org iburst",
					   "1.rhel.pool.ntp.org iburst",
					   "2.rhel.pool.ntp.org iburst",
					   "3.rhel.pool.ntp.org iburst",]
		 }
                default: { fail('OS $::operatingsystem is not currently supporte
d') }
	}
	$package_name="ntp"
}

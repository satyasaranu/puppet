class cis::iupass
{
	mount{ '/tmp':
		ensure => present,
		remounts => true,
		options => 'defaults,nodev,noexec,nosuid',
		fstype => ext4,
		pass => 2,
		dump => 1,
		}
	mount {'/dev/shm':
		ensure => present,
		options => 'defaults,nodev,noexec,nosuid',
		fstype => tmpfs,
		remounts => true,
		}
	mount {'/home':
		ensure => present,
		remounts => true,
		options => 'defaults,nodev',
		fstype => ext4,
		pass => 2,
		dump => 1,
		}	
	exec { "find / -perm -0002 -type d -print | xargs chmod a+t ":
		path => ["/usr/bin", "/usr/sbin", "/bin/df"],
		}
	file_line { 'yumconf':
		path => '/etc/yum.conf',
		line => 'gpgcheck=1',
		match => 'gpgcheck=',
		}
	package { 'aide':
		ensure => present,
		}
	cron 	{ 'aidecron':
		command => '/usr/sbin/aide --check',
		user => root,
		hour => 5,
		minute => 0,
		}
}

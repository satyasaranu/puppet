 class base::params {
	case $::osfamily {
               'RedHat': { $ssh_name='sshd'}
               'Debian': { $ssh_name='ssh'}
               'default': { warning('OS not supported')}
        }
}

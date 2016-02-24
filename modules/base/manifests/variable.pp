class base::variable {
	files { '/root/var/_test.txt':
		content => $topscope,
	}
	notify { "${::operatingsystem} is your operating system": }
}

class localusers {
	user { 'satya':
  ensure           => 'present',
  comment          => 'satya',
  gid              => '500',
  home             => '/home/satya',
  password         => '$1$FTgt.irB$mnoxA2wLPZ4O/AcB3GCGo.',
  password_max_age => '99999',
  password_min_age => '0',
  shell            => '/bin/bash',
  uid              => '501',
	}
}

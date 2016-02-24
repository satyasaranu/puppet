class base::if{
	if $::hostname =~ /^pupp(\d+)/ {
		notice [ "your server is $0" ]
	}
}

class filedemo {
 File {
	owner => 'root',
	group => 'root',
	mode => '0660',
	}
	
	$homedir = "/root"
	$content = " my files content"

	file { "${homedir}/myfile.txt":
	content => $content,
	}
	
	file { "${homedir}/myfile1.txt":
        content => $content,
        }

	file { "${homedir}/myfile3.txt":
        content => " my file3 content",
	mode => '0640',
        }


}

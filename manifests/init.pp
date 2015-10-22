class resolver(
		$dns_servers 	= hiera('resolver::dns_servers'),
		$add_external	= hiera('resolver::add_external'),

		){

	file{'/etc/resolv.conf':
		path	=> '/etc/resolv.conf',
		content	=> template('resolver/resolv.conf.erb'),
		mode	=> 0755,
		ensure	=> file,

	}





}

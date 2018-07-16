pages
page1
	^HelpTopic 
		title: '1. Setup Postgresql'
		contents: 'WINDOWS INSTALL
		
	used graphical installer 9.6.8. from windows https://www.openscg.com/bigsql/postgresql/installers.jsp/

LINUX INSTALL (Arch)

	tested with postgresql 10.3

		sudo pacman -S postgresql

		initdb --locale en_US.UTF-8 -D ''/var/lib/postgres/data'' (replace with your locale if necessary)

		sudo systemctl start postgres

	If you want postgres to be started on boot:

		sudo systemctl enable postgres

	Then continue as described in readme in develop branch. Useful resource: https://wiki.archlinux.org/index.php/PostgreSQL'

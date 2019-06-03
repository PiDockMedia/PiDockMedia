The Plan
------

Using an army of small computers (Raspberry Pi) with a shared storage device. Each device does one or two things well. Everything is customized manually as little as possible and should be loaded, maintained, and recovered with a scripted process.

- Shared Storage should be available on every system
- The base Raspbian image is self configured on first boot
- Docker is used to run all services
- Docks are configured and run via a scripted
- Configurations are stored on or backed up to shared storage

Storage
------

SMB based file share(s) running on a Drobo 5N2

Options considered:
		
1) NAS - Easy to maintain and has good file performance and some hardware failure protection.
	- Drobo
	- Synology
	- OpenMediaVault
	- Freenas
2) Samba Share
	- Samba 
	- MergerFS - Multiple disks presented as one file system - https://github.com/trapexit/mergerfs
	- Snapraid for file protection - https://www.snapraid.it/
	- A Raspberry Pi could be used but performance could suffer.
3) Direct Attached Storage
	- Defeats the purpose of having the distributed army of servers

Server Hardware
------	

1) 
		
Docker
------
	
Collectors
------

Processors
------

Servers
------

Utilities
------

Disaster Recovery
------

tests:
	make test_ubuntu-12.04
	make test_ubuntu-14.04
	make test_debian-7.5

test_ubuntu-12.04:
	VM_BOX='hashicorp/precise64' vagrant up --provision
	VM_BOX='hashicorp/precise64' vagrant provision
	rake spec
	VM_BOX='hashicorp/precise64' vagrant destroy -f

test_ubuntu-14.04:
	VM_BOX='ubuntu/trusty64' vagrant up --provision
	VM_BOX='ubuntu/trusty64' vagrant provision
	rake spec
	VM_BOX='ubuntu/trusty64' vagrant destroy -f

test_debian-7.5:
	VM_BOX='puphpet/debian75-x64' vagrant up --provision
	VM_BOX='puphpet/debian75-x64' vagrant provision
	rake spec
	VM_BOX='puphpet/debian75-x64' vagrant destroy -f

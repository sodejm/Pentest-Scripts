
#!/bin/sh

# Lists snapshots of All VMs in VirtualBox.


echo "These are the VMs that will be listed"
VBoxManage list vms
printf "\n"

#VM_IDS="c31f7321-6287-49fe-8f3e-31d71cf55565"
for vm in `(VBoxManage list vms | cut -d "{" -f2 | cut -d "}" -f1)`; do
	COMMAND="VBoxManage snapshot "$vm" list"
	echo $COMMAND
	eval $COMMAND
	logger "From $0 - Listin VirtualBox Snapshots for PWK VM"
	printf "\n"
done

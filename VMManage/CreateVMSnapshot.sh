
#!/bin/sh

# Creates a snapshot of specific in VirtualBox. The name is the timestamp.
# this was created to give an easy way to repeat VM snapshots of a single vm during a course


FORMATTED_DATE="PWK-$(date | awk '{gsub(/[ \t]/,"-");print}')-snapshot"

# Modify VM_IDS of the specific vm you want to create a snapshot of
# found with `VBoxManage list vm`
VM_IDS="c31f7321-6287-49fe-8f3e-31d71cf55565"


COMMAND="VBoxManage snapshot "$VM_IDS" take "$FORMATTED_DATE" --live"
echo $COMMAND
eval $COMMAND
logger "From $0 - Created VirtualBox Snapshot $FORMATTED_DATE for VM $NEXT"
echo "Created VirtualBox Snapshot $FORMATTED_DATE for VM $NEXT"
printf "\n\n"

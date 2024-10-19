# Step 1: select a VPS or Server
# Create ssh key:
# Buscar archivos (cd ./c/Users/javie/.ssh)
ls -a ~/.ssh*
# Buscar files:
find services/ -type f -name "backup.sh"
# Check OS:
cat /etc/os-release
lsb_release -a
hostnamectl
---------------------------
# Step 2: Create a Storage Volume de 20Gb (backup server outside of the main disk!)
mkfs.ext4 -F  /dev/disk/by-id/scsi-0HC_Volume_101149535
mkdir /mnt/storage
mount -o discard,defaults /dev/disk/by-id/scsi-0HC_Volume_101149535 /mnt/storage
echo "/dev/disk/by-id/scsi-0HC_Volume_101149535 /mnt/storage ext4 discard,nofail,defaults 0 0" >> /etc/fstab
---------------------------
# Step 3: Install Ansible in local machine (not need it agent in remote server)
# We use Ubuntu on WSL2
mkdir ansible && cd $_
# 👉 $_ last argument of previous command
python3 -m venv venv
. venv/bin/activate
pip freeze
pip install --upgrade pip
pip install ansible


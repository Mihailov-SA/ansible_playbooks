# My custom ansible playbooks and scrips

## !!!Warning!!! 

These code is very bad, please read them before use!

### Installing:

```
git clone https://github.com/Mihailov-SA/ansible_playbooks.git
```

```
cd ansible_playbooks/
```

```
chmod +x *.sh
```

### Usage:

File /etc/ansible/hosts must contain valid IP/Hostnames of managed computers


```
./pkg_manager.sh install mc screen curl
```

```
./pkg_manager.sh uninstall mc screen curl
```

```
./pkg_manager.sh autoclean
./pkg_manager.sh autoremove
./pkg_manager.sh upgrade
```

```
./runcmd.sh 'ping -c1 google.com'
```

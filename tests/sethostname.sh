cat > /usr/local/bin/sethostname.sh << EOF
#!/bin/sh
tr -d ':' < /sys/class/net/eth0/address | xargs hostnamectl set-hostname
EOF

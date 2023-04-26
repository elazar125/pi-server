This is my Raspberry Pi stuff. Reboots may be required before some steps (running taliscale or docker install script).

After intalling tailscale & docker, change passwords in `.env` and run `sudo docker compose up -d` in this directory to start all services.

First
```bash
sudo apt update
sudo apt upgrade -y
```

Install Tailscale
```bash
sudo apt install apt-transport-https -y
curl -fsSL https://pkgs.tailscale.com/stable/raspbian/bullseye.noarmor.gpg | sudo tee /usr/share/keyrings/tailscale-archive-keyring.gpg > /dev/null
curl -fsSL https://pkgs.tailscale.com/stable/raspbian/bullseye.tailscale-keyring.list | sudo tee /etc/apt/sources.list.d/tailscale.list
sudo apt update
sudo apt install tailscale -y
sudo tailscale up
```

Install Docker
```bash
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
```

Remember to copy additional ssh public keys to `~/.ssh/authorized_keys`

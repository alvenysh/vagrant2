# VIM
echo "Installing vim"
sudo apt install vim -y
sudo apt-get update

# Wget
echo "Installing wget"
apt-get install wget -y
sudo apt-get update

# Htop
echo "Installing Htop"
sudo apt-get install htop -y
sudo apt-get update

# Tmux
echo "Installing Tmux"
sudo apt-get install tmux -y
sudo apt-get update

# PHP 5.6
echo "Installing PHP 5.6"
sudo apt-get purge `dpkg -l | grep php| awk '{print $2}' |tr "\n" " "` -y
sudo add-apt-repository ppa:ondrej/php -y
sudo apt-get update
sudo apt-get install php5.6 -y

# Nginx
echo "Installing Nginx"
sudo apt install nginx -y
sudo ufw allow 'Nginx HTTP' -y

# Apache2
echo "Installing Apache2"
sudo apt install apache2 -y
sed 's/Lisen 80/Listen 8888/' -i /etc/apache2/ports.conf -y
sudo systemctl enable apache2 -y






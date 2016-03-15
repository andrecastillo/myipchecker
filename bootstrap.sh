# Function to hide the output of all the installation steps as it's noisy.
function install {
	echo Installing $1
	shift
	sudo apt-get -y install "$@" >/dev/null 2>&1
}

echo ' '
echo "---------------------------"
echo "Updating package information"
echo "---------------------------"
echo ' '
sudo apt-get -y update >/dev/null 2>&1

echo ' '
echo "---------------------"
echo "Installing the basics"
echo "---------------------"
echo ' '
install 'git core' git-core 
install 'curl' curl
install 'tmux' tmux
install 'vim' vim
install 'build-essential' build-essential
install 'libssl-dev' libssl-dev 
install 'libcurl4-openssl-dev' libcurl4-openssl-dev
install 'libffi-dev' libffi-dev

echo ' '

echo "------------------"
echo "You're all set..."
echo "   ...MURICA!"
echo "------------------"
echo ' '

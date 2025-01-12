# Update the package lists
sudo apt update

# Install prerequisites
sudo apt install -y software-properties-common

# Add the deadsnakes PPA to get Python 3.9
sudo add-apt-repository -y ppa:deadsnakes/ppa

# Update the package lists again
sudo apt update

# Install Python 3.9
sudo apt install -y python3.9

# Verify the installation
python3.9 --version

# Install pip
sudo apt update
sudo apt install python3.9-distutils -y
sudo wget https://bootstrap.pypa.io/get-pip.py
sudo python3.9 get-pip.py
pip3.9 --version

# Install Flask while ignoring installed blinker
pip3.9 install --ignore-installed Flask
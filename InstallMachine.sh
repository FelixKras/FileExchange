sudo tar -xf ~/SharedToHost/1.aptUpgrade.tar.gz -C /
sudo apt-get upgrade -y
sudo rm -f /var/cache/apt/archives/*.deb

sudo tar -xf ~/SharedToHost/2.apparmorUtils.tar.gz -C /
sudo apt install apparmor-utils -y
sudo rm -f /var/cache/apt/archives/*.deb

sudo tar -xf ~/SharedToHost/3.default-jre.tar.gz -C /
sudo apt install default-jre -y
sudo rm -f /var/cache/apt/archives/*.deb

sudo tar -xf ~/SharedToHost/5.gpp.tar.gz -C /
sudo apt install g++ -y
sudo rm -f /var/cache/apt/archives/*.deb

sudo tar -xf ~/SharedToHost/6.buildessentials.tar.gz -C /
sudo apt install build-essential -y
sudo rm -f /var/cache/apt/archives/*.deb

sudo dpkg -i packages-microsoft-prod.deb
sudo tar -xf ~/SharedToHost/7.dotnet3.1.tar.gz -C /
sudo apt install dotnet-sdk-3.1 -y
sudo apt install dotnet-runtime-3.1 -y
sudo rm -f /var/cache/apt/archives/*.deb

sudo tar -xf ~/SharedToHost/8.dotnet5.0.tar.gz -C /
sudo apt install dotnet-sdk-5.0 -y
sudo apt install dotnet-runtime-5.0 -y
sudo rm -f /var/cache/apt/archives/*.deb

sudo tar xf ~/SharedToHost/4.eclipse-cpp-2020-12-R-linux-gtk-x86_64.tar.gz -C /opt
sudo ln -s /opt/eclipse/eclipse /usr/local/bin/
eclipse


sudo tar -xf ~/SharedToHost/9.apparmor.tools.tar.gz -C /
sudo apt install apparmor-easyprof -y
sudo apt install dapparmor-notify -y
sudo apt install certspotter-notify -y
sudo rm -f /var/cache/apt/archives/*.deb


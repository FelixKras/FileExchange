# update repository lists
apt-get update -y
# download all official updates
sudo apt-get upgrade --download-only -y
# put the official updates into tar
sudo tar cvfz ~/SharedToHost/1.aptUpgrade.tar.gz /var/cache/apt/archives/*.deb --remove-files

# download apparmor utils (app armor is installed and updated)
sudo apt-get install --download-only apparmor-utils -y
# put the apparmor utils into tar
sudo tar cvfz ~/SharedToHost/2.apparmorUtils.tar.gz /var/cache/apt/archives/*.deb --remove-files

# download eclipse ans jre
sudo apt install default-jre --download-only -y
sudo tar cvfz ~/SharedToHost/3.default-jre.tar.gz /var/cache/apt/archives/*.deb --remove-files

wget https://mirror.lagoon.nc/pub/eclipse/technology/epp/downloads/release/2020-12/R/eclipse-cpp-2020-12-R-linux-gtk-x86_64.tar.gz -O /home/felix/SharedToHost/4.eclipse-cpp-2020-12-R-linux-gtk-x86_64.tar.gz
# mirror in case first one doesnt work
# wget https://mirror.aarnet.edu.au/pub/eclipse/technology/epp/downloads/release/2020-12/R/eclipse-cpp-2020-12-R-linux-gtk-x86_64.tar.gz -O /home/felix/SharedToHost/4.eclipse-cpp-2020-12-R-linux-gtk-x86_64.tar.gz

# sha 512 check 
eclipsesha512=311e9d74d9812b25c2c951a518f7eae8adb3251cb0cb82394035e38b7ae1f3578943ace4120ba8f95bc3ef98bfb3383ff856c2540d3dbc3555d3a2602f8487c1
echo $eclipsesha512 ~/SharedToHost/4.eclipse-cpp-2020-12-R-linux-gtk-x86_64.tar.gz > ~/SharedToHost/4.eclipse-cpp-2020-12-R-linux-gtk-x86_64.tar.gz.sha512
sha512sum ~/SharedToHost/4.eclipse-cpp-2020-12-R-linux-gtk-x86_64.tar.gz.sha512 --check 
# unpack later
# tar zxf 4.eclipse-cpp-2020-12-R-linux-gtk-x86_64.tar.gz 

# download g++
sudo apt install g++ --download-only -y
sudo tar cvfz ~/SharedToHost/5.gpp.tar.gz /var/cache/apt/archives/*.deb --remove-files
# download build essentials
sudo apt install build-essential --download-only -y
sudo tar cvfz ~/SharedToHost/6.buildessentials.tar.gz /var/cache/apt/archives/*.deb --remove-files

# download dotnet
wget https://packages.microsoft.com/config/ubuntu/18.04/packages-microsoft-prod.deb -O /home/felix/SharedToHost/packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb

sudo apt update
# dotnetcore 3.1
sudo apt install apt-transport-https --download-only -y
sudo apt install dotnet-sdk-3.1 --download-only -y
sudo apt install dotnet-runtime-3.1 --download-only -y
sudo tar cvfz ~/SharedToHost/7.dotnet3.1.tar.gz /var/cache/apt/archives/*.deb --remove-files

# dotnetcore 5.0
sudo apt-get update
sudo apt install dotnet-sdk-5.0 --download-only -y
sudo apt install dotnet-runtime-5.0--download-only -y
sudo tar cvfz ~/SharedToHost/8.dotnet5.0.tar.gz /var/cache/apt/archives/*.deb --remove-files

apt install unzip -y
wget https://releases.hashicorp.com/terraform/1.5.4/terraform_1.5.4_linux_amd64.zip
unzip terraform_1.5.4_linux_amd64.zip
chmod 777 terraform
sudo mv terraform /usr/local/bin/
cd /usr/local/bin/
terraform --version

from wordpress

#support gulp/grunt/webpack-based builds
run apt-get update
run apt-get install -y gnupg sudo vim
run curl -sL https://deb.nodesource.com/setup_8.x | bash -
run apt-get install -y nodejs
run useradd reguser && mkdir -p /home/reguser && chown -R reguser /home/reguser 



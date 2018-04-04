from wordpress

run useradd reguser && mkdir -p /home/reguser && chown -R reguser /home/reguser 
run apt-get update

# support gulp/grunt/webpack-based builds
# node dependencies
# update deb repo
run apt-get install -y gnupg sudo vim
run curl -sL https://deb.nodesource.com/setup_8.x | bash -
run apt-get install -y nodejs



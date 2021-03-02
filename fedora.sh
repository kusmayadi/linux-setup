mkdir ~/.tmp

// Essentials
sudo dnf install curl git -y

sudo dnf install fish -y

// Change shell
chsh -s /usr/bin/fish

// Setup asdf
git clone https://github.com/asdf-vm/asdf.git ~/.asdf
cd ~/.asdf
git checkout "$(git describe --abbrev=0 --tags)"
source ~/.asdf/asdf.fish
mkdir -p ~/.config/fish/completions; and ln -s ~/.asdf/completions/asdf.fish ~/.config/fish/completions
asdf plugin add php
asdf plugin add nodejs
asdf plugin add ruby
asdf plugin add rust
asdf install php latest
asdf install nodejs latest
asdf install ruby latest
asdf install rust latest


// Install composer
cd ~
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('sha384', 'composer-setup.php') === '756890a4488ce9024fc62c56153228907f1545c228516cbf63f885e036d37e9a59d27d63f46af1d4d07ee0f76181c7d3') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
sudo php composer-setup.php --install-dir=/usr/bin --filename=composer
php -r "unlink('composer-setup.php');"

sudo dnf install vagrant -y

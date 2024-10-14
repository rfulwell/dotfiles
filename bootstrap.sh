# install minimal system-level packages
sudo apt-get update
sudo apt-get install -y \
  curl \
  stow \
  zsh \

# install homebrew deps
sudo apt-get install -y --fix-missing \
  build-essential

# install brew per https://brew.sh/
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# install initial brews
brew install \
  binutils \
  black \
  deno \
  gcc \
  go \
  node \
  powerlevel10k \
  thefuck \
  unzip \
  util-linux \
  zsh-autocomplete

# install assets for powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.oh-my-zsh/themes/powerlevel10k

# install Python via rye per https://rye.astral.sh/
curl -fsSLO https://github.com/astral-sh/rye/releases/latest/download/rye-x86_64-linux.gz
gunzip rye-x86_64-linux.gz
chmod +x ./rye-x86_64-linux
RYE_INSTALL_OPTION="--yes" ./rye-x86_64-linux install self

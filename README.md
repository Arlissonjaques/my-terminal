# Meu-Ubuntu

## Git

Instalação
```
$ sudo apt install git
```
Configuração de usuario:
```
$ git config --global user.name "Arlisson Jaques"
```
```
$ git config --global user.email arlissonjaques@gmail.com
```
```
$ git config --global core.editor code
```
Criação e configuração de chave SSH no GitHub(tutorial completo [aqui](https://docs.github.com/pt/github/authenticating-to-github/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent))
```
$ ssh-keygen -t ed25519 -C "arlissonjaques@gmail.com"
```
(pressione 3 vezes enter)

Inicie o ssh-agent em segundo plano.
```
$ eval "$(ssh-agent -s)"
```
Adicione sua chave SSH privada ao ssh-agent.
```
ssh-add ~/.ssh/id_codigo_da_chave
```
Copie sua chave em
```
cd ~/.ssh && ls
```
```
cat id_codigo_da_chave.pub
```
No GitHub, vá até
```
Seu perfil > Settigns > SSH and GPG keys > New SSH key > e cole sua chave
```

# Terminal
* Tilix(Serve para abrir diversas abas no terminal etc)
  - Baixe o pacote [aqui](https://launchpad.net/~webupd8team/+archive/ubuntu/terminix/+packages)
  - Dê permissão para instalação e instale-o
  ```
  sudo chmod +x arquivo-do-tilix.deb
  sudo apt install arquivo-do-tilix.deb
  ```

* Zsh
```
$ sudo apt install zsh -y
```
Instalação do oh-my-zsh(irá instalar também o curl)
```
$ sudo apt install curl && sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
Adicione "usr/bin/zsh" nas preferências dos terminal para executar o zsh automaticamente

* Plugins do zsh

Instalação do gerenciador de plugins Getantibody
```
$ curl -sfL git.io/antibody | sudo sh -s - -b /usr/local/bin
```
Crie um arquivo de configuração
```
$ nano ~/.zsh_plugins.sh 
```
Adicione seus Plugins no arquivo(exemplo)
```
zsh-users/zsh-autosuggestions
zsh-users/zsh-syntax-highlighting
agkozak/zsh-z
```
Use esse comando para ativar o carregamento dinamico
```
echo -e "source <(antibody init)\antibody bundle < ~/.zsh_plugins.sh"
```
Instalação do FZF(Melhorar o historico de comandos(Ctrl + R)
```
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
```
Tema
```
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```
Set este tema no arquivo .zshrc
```
ZSH_THEME="powerlevel10k/powerlevel10k"
```
Reinicie o terminal e configure o tema de acordo com sua prefência

Repositorio com varios (plugins)[https://github.com/unixorn/awesome-zsh-plugins]


## Personalização do sistema

* Pacote de icones

Adicione o repositorio ppa e instale
```
$ sudo add-apt-repository ppa:papirus/papirus
$ sudo apt-get update
$ sudo apt-get install papirus-icon-theme
Depois selecione Papirus no Tweak
```
* Tema

Crie uma pasta para colocar os arquivos
```
$ cd ~ && mkdir .themes
```
Clone o repositorio
```
$ git clone https://github.com/daniruiz/flat-remix-gtk
```
Resta criar a pasta local onde ficará o tema
```
mkdir -p ~/.themes
```
Copie os arquivos do clone para a pasta .themes
```
cp -r flat-remix-gtk/Flat-Remix-GTK* ~/.themes/
```
Depois é só alterar o tema com os Tweak para o tema
```
Flat-Remix-GTK-Blue-Darkest-Solid-NoBorder
```
## Linguagens e Frameworks

* RVM
Instale as chaves GPG:
```
$ gpg2 --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
```
Instale o RVM
```
$ curl -sSL https://get.rvm.io | bash -s stable
```
Para o terminal reconhecer o RVM execute
```
$ source /home/schuarzem/.rvm/scripts/rvm
```
* Ruby

Instale o Ruby(no exemplo, as versão 2.6.6)
```
$ rvm install 2.6.6
```
Adicione o Ruby ao PATH
```
echo "export PATH="$PATH:$HOME/.rvm/rubies/ruby-2.6.6/bin" >> .zshrc
```
Recarregue o terminal

* Rails

Instale o Node
```
$ sudo apt install nodejs -y
```
Instalando o yarn
```
curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
```
```
echo "deb https://dl.yarnpkg.com/debian/ stable main" |
sudo tee /etc/apt/sources.list.d/yarn.list
```
```
sudo apt update && sudo apt install yarn
```
Instalação do Rais
```
gem install rails --no-document
```


```
sudo snap install rubymine --classic
```















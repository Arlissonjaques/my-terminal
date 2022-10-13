# Meu-Ubuntu

## Estilizacao
```
Dash to Dock - (customizar a dash do Ubuntu)
Vitals - (mostra informacoes do sistema)
```

<h4>Caso não funcone a ativacao da extencao, execute sudo apt install gnome-shell-extensions<h4>

## Git

Instalação
```
sudo apt install git
```
Configuração de usuario:
```
git config --global user.name "Arlisson Jaques"
```
```
git config --global user.email arlissonjaques@gmail.com
```
```
git config --global core.editor code
```
Criação e configuração de chave SSH no GitHub(tutorial completo [aqui](https://docs.github.com/pt/github/authenticating-to-github/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent))
```
ssh-keygen -t ed25519 -C "arlissonjaques@gmail.com"
```
(pressione 3 vezes enter)

Inicie o ssh-agent em segundo plano.
```
eval "$(ssh-agent -s)"
```
Adicione sua chave SSH privada ao ssh-agent.
```
cd ~/.ssh && ls
```
```
ssh-add ~/.ssh/id_codigo_da_chave
```
```
cat id_codigo_da_chave.pub
```
No GitHub, vá até
```
Seu perfil > Settigns > SSH and GPG keys > New SSH key > e cole sua chave
```
Teste a conexao com o comando.
```
ssh -T git@github.com
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
sudo apt install zsh -y
```
Instalação do oh-my-zsh(irá instalar também o curl)
```
sudo apt install curl && sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
Adicione "usr/bin/zsh" nas preferências dos terminal para executar o zsh automaticamente

* Plugins do zsh

Instalação do gerenciador de plugins Getantibody
```
curl -sfL git.io/antibody | sudo sh -s - -b /usr/local/bin
```
Crie um arquivo de configuração
```
vim ~/.zsh_plugins.sh 
```
Adicione seus Plugins no arquivo(exemplo)
```
zsh-users/zsh-autosuggestions
zsh-users/zsh-syntax-highlighting
agkozak/zsh-z
```
Va ate o arquivo `.zshrc` e adicione estas linhas
```
source <(antibody init)
antibody bundle < ~/.zsh_plugins.sh
```
Instalação do FZF(Melhorar o historico de comandos(Ctrl + R)
```
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
```

## Personalização do sistema

Tema do terminal
```
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```
Set este tema no arquivo .zshrc
```
ZSH_THEME="powerlevel10k/powerlevel10k"
```
Reinicie o terminal e configure o tema de acordo com sua prefência

Repositorio com varios (plugins)[https://github.com/unixorn/awesome-zsh-plugins]


* Pacote de icones

Adicione o repositorio ppa e instale
```
sudo add-apt-repository ppa:papirus/papirus
sudo apt-get update
sudo apt-get install papirus-icon-theme
```
Depois selecione Papirus no Tweak

* Tema do sistema

Crie uma pasta para colocar os arquivos
```
cd ~ && mkdir .themes && cd .themes
```
Clone o repositorio
```
git clone https://github.com/daniruiz/flat-remix-gtk
```
Copie os arquivos do clone para a pasta .themes
```
sudo cp -r flat-remix-gtk/themes-old/Flat-Remix-GTK-Blue-Darkest-Solid-NoBorder ~/.themes/
```
Depois é só alterar o tema com os Tweak para o tema
```
Flat-Remix-GTK-Blue-Darkest-Solid-NoBorder
```
## Linguagens e Frameworks

Instale o GPG2
```
sudo apt-get install gnupg2 -y
```
* RVM
Instale as chaves GPG:
```
gpg2 --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
```
Instale o RVM
```
curl -sSL https://get.rvm.io | bash -s stable
```
Para o terminal reconhecer o RVM execute
```
source /home/schuarzem/.rvm/scripts/rvm
```
* Ruby

Instale o Ruby(no exemplo, as versão 2.6.6)
```
rvm install 2.6.6
```
Caso tenha errors do tipo:
```
Error running '__rvm_make -j4',
please read /home/arlisson/.rvm/log/1654095062_ruby-2.6.3/make.log

There has been an error while running make. Halting the installation
```
Execute estes comandos:
```
rvm pkg install openssl
rvm remove x.x.x # versao do ruby caso ja a tenha instalado
rvm install x.x.x -C --with-openssl-dir=$HOME/.rvm/usr
```

Adicione o Ruby ao PATH ao `~/.zshrc`
```
export PATH="$PATH:$HOME/.rvm/rubies/default/bin"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # serve para nao dar erro ao trocar de versao do ruby
```
Recarregue o terminal

* Rails

Instale o Node
```
sudo apt install nodejs -y
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

# PostgreSQL

Depois de instalado, criar nova rola(user):
```
sudo -u postgres createuser arlisson -dr
```
Acesse o psql com o usuario postgres.
```
sudo -u postgres psql
```
Altere a senha do usuario postgres para a desejada.
```
postgres# ALTER USER postgres ENCRYPTED PASSWORD ‘senha’;
```
Por fim, reinicie o serviço do postgres.
```
systemctl restart postgresql
```
Voce pode validar se a senha foi alterada usando:
```
psql -h localhost -U postgres -W -d postgres
```
E so digitar a senha e ver se funciona.

# Extensoes
As duas mais usadas sao
- Dash to Dock (usasa para alterar a dash do ubuntu e e ficar me baixo!)
- Vital (serve para verificar as infos do pc, tipo consumo de memoria ram e etc)


## Exelente regex para senha
```
^.*(?=.{10,})(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%^&+=]).*$
```











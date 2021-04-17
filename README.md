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

# PostgreSQL

Depois de instalado, criar nova rola(user):
```
sudo -u postgres createuser arlisson -dr
```



# Ruptiva

## Rodar o projeto

credenciais
```
# GENERAL
BASE_URL=http://localhost:3000

# MELHOR ENVIO
MELHOR_ENVIO_SHIPMENT_CALCULATE_URI=https://sandbox.melhorenvio.com.br/api/v2/me/shipment/calculate
MELHOR_ENVIO_AUTHENTICATION_TOKEN=eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6IjU2OGVkMTU4OTIzYzIxMDQwMTI4M2I4ZjY5MTQ4MDg2MDE5ZmZkNzI1NTJlMzg0NWUwYmM0MDIyYzFkMzY3Y2I2NzlkYjYzODBkOTc2MGNmIn0.eyJhdWQiOiI5NTYiLCJqdGkiOiI1NjhlZDE1ODkyM2MyMTA0MDEyODNiOGY2OTE0ODA4NjAxOWZmZDcyNTUyZTM4NDVlMGJjNDAyMmMxZDM2N2NiNjc5ZGI2MzgwZDk3NjBjZiIsImlhdCI6MTYxMDQ1MzA5OCwibmJmIjoxNjEwNDUzMDk4LCJleHAiOjE2NDE5ODkwOTgsInN1YiI6ImRjYzIyYTI1LWMwODQtNDIxMi05OWVhLTM4N2YyYmQxZDdjYiIsInNjb3BlcyI6WyJjYXJ0LXJlYWQiLCJjYXJ0LXdyaXRlIiwiY29tcGFuaWVzLXJlYWQiLCJjb21wYW5pZXMtd3JpdGUiLCJjb3Vwb25zLXJlYWQiLCJjb3Vwb25zLXdyaXRlIiwibm90aWZpY2F0aW9ucy1yZWFkIiwib3JkZXJzLXJlYWQiLCJwcm9kdWN0cy1yZWFkIiwicHJvZHVjdHMtZGVzdHJveSIsInByb2R1Y3RzLXdyaXRlIiwicHVyY2hhc2VzLXJlYWQiLCJzaGlwcGluZy1jYWxjdWxhdGUiLCJzaGlwcGluZy1jYW5jZWwiLCJzaGlwcGluZy1jaGVja291dCIsInNoaXBwaW5nLWNvbXBhbmllcyIsInNoaXBwaW5nLWdlbmVyYXRlIiwic2hpcHBpbmctcHJldmlldyIsInNoaXBwaW5nLXByaW50Iiwic2hpcHBpbmctc2hhcmUiLCJzaGlwcGluZy10cmFja2luZyIsImVjb21tZXJjZS1zaGlwcGluZyIsInRyYW5zYWN0aW9ucy1yZWFkIiwidXNlcnMtcmVhZCIsInVzZXJzLXdyaXRlIiwid2ViaG9va3MtcmVhZCIsIndlYmhvb2tzLXdyaXRlIl19.QTm9J09b_CHGFUMk1P2aHzEize1qlWv3SmE4Ys1FjL8jdKHzy_cwPTtMRG-5HAzUzhHYfYt7HFotgQyS8eh4qmwTq1GBZizdhGJCf4B6YNEmoIRzG2F4OM8XTdrT_lebmD8HgC1Pwn1xtJbb0ABVdI0bKrRiz6vSZZNVVOJxXDQ_h7RNoZPdnRakLxapcOCyySV6J72_dCK2CkXztuhiSDENpFIbOGuqcxusLnzxlemhFiAP88TaWgmk4fSB6nd01VOvafKbc5DlhvHEtM6m0ovy1PmvK-YxCwPjBRYmMZbVvaw3o4QddOUruxYM79e4QUjvwIt0vK-6EQqgGiFwRVn34ez1K9Pba9dx-BLsMDtb95RJqRZzDGRI5IU6w_hGb9P1QZZyzMTkoe_DvwWkX4fJQbul8fTvq0cqYfquf4j051DJw3TRW8N6YVElL_uRuKEsD-GuwcBdJp8msH5dqswwC7FOTW-dmgRckY9ezh0-KCb7euD30wOuMRpGnqxsYrh2jfoszsvHOz0yC6KiJNfAWfOAVz7jJrbJN7lrIiL78oEDu1XGRYqAQh4Mw8shEQVW2dE67Kyj0K75z3BBJZVyGuS6Oe-hP0dOmj8xlF8GQc5ELxBSmvMh6dohi8vfqGHyYrVfKKs-Rivsvke313a_oG0jp8xgEteSjDvmACg

# S3
S3_ACCESS_KEY_ID=AKIA2ZK554SHJKJQF3WT
S3_SECRET_ACCESS_KEY=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
S3_REGION=sa-east-1
S3_BUCKET=monile-ecommerce-dev

# MAILGUN
MAILGUN_SMTP_PORT=
MAILGUN_SMTP_SERVER=
MAILGUN_SMTP_LOGIN=
MAILGUN_SMTP_PASSWORD=
MAILGUN_DOMAI

# SWITCHER RECEBEE
API_SWITCHER_RECEBEE_URL=https://api-switcher-recebee-homolog.herokuapp.com/

# Acess-token do meio de pagamento
84545e97-80e8-455e-b364-1ce759f1ff24
```










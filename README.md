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
$ cd ~ && mkdir Themes && cd Themes
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








chave-ssh: SHA256:ItErv5GJ8y9TJpfCQ8Pf/if/0eGs0SfkyOYhYTYQymw arlissonjaques@gmail.com

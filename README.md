# Meu-Bash

Personalização do bash do Linux. Adicionar esse código ao fim do arquivo **.bashrc**
Localizado em: /home/seu_usuario/.bashrc


## Tutorial escrito

Desinstalar firefox:
```
$ sudo apt remote --purge firefox
```
# Git

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













chave-ssh: SHA256:ItErv5GJ8y9TJpfCQ8Pf/if/0eGs0SfkyOYhYTYQymw arlissonjaques@gmail.com

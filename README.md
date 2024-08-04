<p align="center"><a href="https://laravel.com" target="_blank"><img src="https://socialify.git.ci/kzacristo/avaliacao_grupoplanmarketing/image?language=1&name=1&owner=1&stargazers=1&theme=Light" width="400" alt="Laravel Logo"></a></p>

<p align="center">
<a href="https://github.com/laravel/framework/actions"><img src="https://github.com/laravel/framework/workflows/tests/badge.svg" alt="Build Status"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/dt/laravel/framework" alt="Total Downloads"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/v/laravel/framework" alt="Latest Stable Version"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/l/laravel/framework" alt="License"></a>
</p>

<br clear="both">

<h1 align="center">Desafio proposto por Grupo PlanMarketing</h1>

###

<div align="left">
  <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/javascript/javascript-original.svg" height="40" alt="javascript logo"  />
  <img width="12" />
  <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/typescript/typescript-original.svg" height="40" alt="typescript logo"  />
  <img width="12" />
  <img src="https://raw.githubusercontent.com/laravel/art/master/logo-lockup/5%20SVG/2%20CMYK/1%20Full%20Color/laravel-logolockup-cmyk-red.svg" height="40" alt="laravel logo"  />
  <img width="12" />
  <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/php/php-original.svg" height="40" alt="php logo"  />
  <img width="12" />
  <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/vuejs/vuejs-original.svg" height="40" alt="vuejs logo"  />
</div>

###

<br clear="both">

<p align="left">Criação de um sistemas para gerenciar os treinamentos realizado por seus colaboradores.</p>

###

<br clear="both">

<h4 align="left">## Variáveis de Ambiente<br><br>Para rodar esse projeto, você vai precisar adicionar as seguintes variáveis de ambiente no seu .env<br><br>
</h4>

```
DB_CONNECTION=mysql
DB_HOST=training-db
DB_PORT=3306
DB_DATABASE=training_db
DB_USERNAME=root
DB_PASSWORD=admin
```

###

<br clear="both">

<p align="left">## Stack utilizada<br><br>**Front-end:** JS, TS, Vue.js<br><br>**Back-end:** PHP, Laravel</p>

###

<br clear="both">

<p align="left">Para executar o projeto:<br><br>git clone :</p>

```
https://github.com/kzacristo/avaliacao_grupoplanmarketing.git
```
<p>acesse o diretório do arquivo
<p>execute os comandos abaixo : </p>

```
docker-compose up --build -d
```

<p>execure a migration dentro do container com o comando : </p>

```
docker-compose exec training-app php artisan migration
```

<p>acesse : </p> 

http://localhost:8081</p>

###

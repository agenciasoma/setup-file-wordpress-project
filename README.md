# setup-file-wordpress-project
> Arquivo com script para iniciar um projeto com WordPress

<img alt="GitHub top language" src="https://img.shields.io/github/languages/top/agenciasoma/setup-file-wordpress-project">

## Necessário

- wp-cli 2.4.0 or later
- PHP 5.4 or later
- WordPress 3.7 or later

## Usage

Você deve executar o arquivo no repositório que deseja realizar a instalação do prójeto.

Preencha os valores abaixo ao executar o script

1. Nome do banco de dados.
2. Senha do Banco de Dados.
3. Slug do tema (Sem espaço e acentuação), esse slug também será o nome do directório raiz do projeto.
4. Url do servidor local (ex: http://localhost/soma/)
5. Senha para o usuário suporte do WordPress que será criado.
6. Título do Site (você deve colocar o título entre aspas)
7. Prefixo das tabelas que será criada


## Exemplo do comando de inicialização

```

./setup-project.sh bdname password slug-theme http://localhost/~somadev/ senhaaqui "Este é o título do site" prefix_

```

## Contribuição

Fique avontade para contribuir com este projeto.
Será um prazer receber novas ideias e melhorias para automatizar o setup de um projeto em WordPress.

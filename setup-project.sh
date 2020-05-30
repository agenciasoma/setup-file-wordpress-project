#!/bin/bash
# Baixa os arquivos do WordPress
wp core download --locale=pt_BR

# Cria o wp-config.php
wp config create --dbhost=127.0.0.1 --dbname=$1 --dbuser=root --dbpass=$2 --locale=pt_BR --dbprefix=$7 --force

# Criando banco depois de criar o wp-config
wp db create

# Instala o WordPress
wp core install --url="$4$3" --title="$6" --admin_user=suporte --admin_password=$5 --admin_email=atendimento@somadev.com.br --skip-email

# Baixa os plugins
wp plugin install contact-form-7 wordpress-seo advanced-custom-fields wp-mail-smtp duplicate-post really-simple-ssl

# Baixa a tradução dos plugins
wp language plugin install pt_BR --all

# Ativa os plugins
wp plugin activate contact-form-7 wordpress-seo advanced-custom-fields wp-mail-smtp

# Cria a pasta do Tema
mkdir wp-content/themes/$3

# Baixa o Tema de Setup criado pela SOMADev
curl -L https://github.com/DjalmaToledo/wordpress-theme-setup/archive/master.zip | tar xz --strip=1 --directory ./wp-content/themes/$3/

# Ativa o Tema
wp theme activate $3

# Exclue os temas padrão do WordPress
rm -Rf ./wp-content/themes/twentynineteen
rm -Rf ./wp-content/themes/twentyseventeen
rm -Rf ./wp-content/themes/twentytwenty

exit 0
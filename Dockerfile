FROM php:8.2-fpm
RUN touch /var/log/logs 

# Arguments defined in docker-compose.yml
ARG user
ARG uid
RUN cd /var/www
# Install system dependencies
RUN apt-get update && apt-get install -y \
    git \
    curl \
    libpng-dev \
    libonig-dev \
    libxml2-dev \
    zip \
    unzip

# Clear cache
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

# Install PHP extensions
RUN docker-php-ext-install pdo_mysql mbstring exif pcntl bcmath gd

# Get latest and install  Composer
COPY . .
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer 
#RUN export COMPOSER_ALLOW_SUPERUSER=1 

   
# # Create system user to run Composer and Artisan Commands
RUN chmod 777 -R /var/www
RUN mkdir /home/$user
RUN useradd -G www-data,root -u $uid -d /home/$user $user
RUN chown -R $user:$user /home/$user

USER $user
RUN cd /var/www

RUN composer install 
RUN composer require laravel/breeze --dev
RUN php artisan breeze:install vue
# RUN php artisan migrate 
# #--working-dir=${DIR} 

# install node 
ENV NODE_VERSION=20.16.0
RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash
ENV NVM_DIR=/home/$user/.nvm
RUN . "$NVM_DIR/nvm.sh" && nvm install ${NODE_VERSION}
RUN . "$NVM_DIR/nvm.sh" && nvm use v${NODE_VERSION}
RUN . "$NVM_DIR/nvm.sh" && nvm alias default v${NODE_VERSION}
ENV PATH="/home/"$user"/.nvm/versions/node/v${NODE_VERSION}/bin/:${PATH}"
RUN node --version
RUN npm --version
RUN npm install --global cross-env
RUN npm install --legacy-peer-deps
RUN npm run build


# EXPOSE 9000 5173 80 
EXPOSE 9000 
#CMD ["tail","-f","/var/log/logs"]
#CMD ["npm","run","dev"]
# CMD ["php-fpm"]


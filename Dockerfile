FROM wordpress:latest

# 安装一些推荐的 PHP 扩展
RUN apt-get update && apt-get install -y \
    libfreetype6-dev \
    libjpeg62-turbo-dev \
    libpng-dev \
    libwebp-dev \
    libxpm-dev \
    && docker-php-ext-configure gd --with-freetype --with-jpeg --with-webp --with-xpm \
    && docker-php-ext-install -j$(nproc) gd

# 复制 wp-config.php 文件，替换环境变量
COPY wp-config.php /var/www/html/

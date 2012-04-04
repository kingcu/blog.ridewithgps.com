jekyll --no-server --no-auto && rsync -avz --delete _site/ deploy@kona.ridewithgps.com:/var/www/blog.ridewithgps.com/

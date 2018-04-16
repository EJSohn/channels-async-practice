FROM mathpresso/docker-stella:python35

MAINTAINER mathpresso

# install code
ADD . /code/

ADD requirements.txt /code/

RUN pip3 install -r /code/requirements.txt

# sort out permissions
RUN chown -R www-data:www-data /code

# setup nginx config
RUN ln -s /code/nginx-app.conf /etc/nginx/sites-enabled/
RUN ln -s /code/supervisor-app.conf /etc/supervisor/conf.d/

# override existing default nginx.conf
RUN ln -s /code/nginx.conf /etc/nginx/nginx.conf -f

WORKDIR /code

EXPOSE 80 22 5000
CMD ["supervisord", "-n"]
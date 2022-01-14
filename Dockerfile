FROM python:3.9

RUN python -m pip install --upgrade pip
RUN pip install opentaxii

RUN apt update
RUN apt install -y nginx

VOLUME ["/taxii_conf"]
EXPOSE 9000

COPY ./conf/data-configuration.yml /conf/data-configuration.yml
COPY ./conf/default /etc/nginx/sites-available/default
COPY ./launch_all.sh /conf/launch_all.sh

RUN echo "daemon off;" >> /etc/nginx/nginx.conf
RUN chmod a+x /conf/launch_all.sh
CMD [ "bash", "-c", "/conf/launch_all.sh" ]
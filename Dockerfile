FROM geoanka/geoserver:1

RUN apt-get update
RUN apt-get install -y build-essential
RUN apt-get install -y gdal-bin libgdal-java
RUN apt-get install -y libgdal-dev


COPY --chown=root:staff ./lib/ /usr/local/geoserver/WEB-INF/lib/

ENV GDAL_DATA=/usr/share/gdal/2.1

FROM osm/tile-expirer-base
RUN mkdir /expirer
WORKDIR /expirer
COPY expire.rb .
COPY expire-tiles.rb .
RUN chmod 777 expire.rb expire-tiles.rb
CMD ./expire-tiles.rb
#!/usr/local/bin/ruby

require_relative './expire'

tile_dirs = ['/data/tiles/default']
max_zoom = 19

while true
    Dir.glob("/data/expire-queue/changes-*.gz").each do |f|
        Expire::expire(f, 13, max_zoom, tile_dirs)
        File::unlink(f)
    end

    sleep 60
end
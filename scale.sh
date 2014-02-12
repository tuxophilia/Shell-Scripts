	#!/bin/bash

SRC=
DEST=
EXT=jpg

for filename in $SRC/*.$EXT
do 
  t=${filename##/*/}       ## strip off prefixes
  t=${t%.$EXT}_thumb.$EXT  ## set name of thumbnail image file to filename_thumb.ext
  convert -resize 30%  $filename $DEST/$t ## make the thumbnail
done

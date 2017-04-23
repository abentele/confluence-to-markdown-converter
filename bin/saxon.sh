#!/bin/sh

INPUT_FILENAME=$1
OUTPUT_FILENAME=`dirname $INPUT_FILENAME`/`basename $INPUT_FILENAME .xml`.md

echo "Convert $INPUT_FILENAME to $OUTPUT_FILENAME"

java -jar ../lib/saxon9he.jar -s:$INPUT_FILENAME -xsl:../xslt/c2md.xsl -o:$OUTPUT_FILENAME

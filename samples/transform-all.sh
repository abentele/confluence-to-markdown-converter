#!/bin/sh

find Jsonix -name '*.xml' -exec ../bin/saxon.sh {} \;

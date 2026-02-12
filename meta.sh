#!/usr/bin/env bash

find node_modules/bootstrap-icons/icons -name "*.svg" -exec basename {} .svg \; | \
awk '{print "- bi " $0}' | \
sort > data/bi-icons.yml

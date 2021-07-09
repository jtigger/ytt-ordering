#!/usr/bin/env bash

set -x

ytt -f fruit/ --files-inspect
ytt -f fruit/ --data-values-inspect
ytt -f fruit/

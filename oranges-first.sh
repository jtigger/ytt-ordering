#!/usr/bin/env bash

set -x

ytt \
  -f fruit/a.overlay.yaml \
  -f fruit/a.val.yaml \
  -f fruit/m.overlay.yaml \
  -f fruit/m.val.yaml \
  -f fruit/z.val.yaml \
  -f fruit/zz.schema.yaml \
  -f fruit/oranges/ \
  -f fruit/apples/ \
  --files-inspect

  
ytt \
  -f fruit/a.overlay.yaml \
  -f fruit/a.val.yaml \
  -f fruit/m.overlay.yaml \
  -f fruit/m.val.yaml \
  -f fruit/z.val.yaml \
  -f fruit/zz.schema.yaml \
  -f fruit/oranges/ \
  -f fruit/apples/ \
  --data-values-inspect
  
ytt \
  -f fruit/a.overlay.yaml \
  -f fruit/a.val.yaml \
  -f fruit/m.overlay.yaml \
  -f fruit/m.val.yaml \
  -f fruit/z.val.yaml \
  -f fruit/zz.schema.yaml \
  -f fruit/oranges/ \
  -f fruit/apples/ \

#!/bin/sh

cd addon_src || { echo "cd failed"; return 1; }

# all pycache files have to be deleted before we can zip the .addon file
find . -regex '^.*\(__pycache__\|\.py[co]\)$' -delete

# meta.json is the local user's customized version of config.json, don't bundle this.
rm meta.json

zip -r ../ankimorphs_chinese_jieba.ankiaddon ./*

cd ..
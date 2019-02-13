# !/bin/bash

today=`date +%Y%m%d`

[ ! -d "data" ] && mkdir data

outputdir=data/${today}

rm -rf ${outputdir}
mkdir ${outputdir}

#scrapy crawl topapp -o ${outputdir}/topapp.json
#python chatterbox/unique.py ${outputdir}/topapp.json

scrapy crawl appinfo

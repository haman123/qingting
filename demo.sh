#!/bin/bash

ALBUMID="111098"
RSSFILE="starming.xml"
# export PBUUID=""
./qingting_linux_amd64 $ALBUMID > $RSSFILE
ls
curl -X PUT -F c=@$RSSFILE https://ptpb.pw/$PBUUID

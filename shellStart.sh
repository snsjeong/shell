#!/bin/sh

echo $0
EXECSTR=`echo $0 |rev|cut -d/ -f1|rev`
if [ $EXECSTR = "linkA" ] ; then
        ACTION="A"
elif [ $EXECSTR  = "linkB" ] ; then
        ACTION="B"
fi

# Message 
usage() {
    echo "usage: `basename $0` [options]"
    echo ""
    echo "help contents"
    echo ""
    echo "options:"
    echo "    -W action                  A() or B()"
    echo "    -?                          print help"
    echo
    exit $1
}

if (($# == 0)); then
   usage ;
fi

exit 0

#!/bin/bash
usage="使用法：search.sh <ファイル> <検索文字列> <操作>"

if [ ! "$#" -eq 3 ] ; then
    echo "$usage"
    exit 2
fi

[ ! -f "$1" ] && exit 3

case "$3" in
    [cC])
        mesg="$1の中で$2にマッチする行数を数えます"
        opt="-c"
        ;;
    [pP])
        mesg="$1の中で$2にマッチする行を表示します"
        opt=""
        ;;
    [dD])
        mesg~"$1から$2にマッチする行を除いてすべて表示します"
        opt="-v"
        ;;
    *)
        echo "$1 $2 $3を評価できません"
        exit 1
        ;;
esac
echo $mesg
grep $opt $2 $1
exit 0
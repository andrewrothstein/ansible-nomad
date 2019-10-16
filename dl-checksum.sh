#!/usr/bin/env sh
APP=nomad
VER=${1:-0.9.6}
DIR=~/Downloads
MIRROR=https://releases.hashicorp.com/${APP}/${VER}

CHECKSUMS=${APP}_${VER}_SHA256SUMS
LCHECKSUMS=$DIR/$CHECKSUMS
RCHECKSUMS=$MIRROR/$CHECKSUMS

if [ ! -e $DIR/$CHECKSUMS ];
then
    wget -q -O $LCHECKSUMS $RCHECKSUMS
fi


dl()
{
    OS=$1
    ARCH=$2
    PLATFORM=${OS}_${ARCH}
    FILE=${APP}_${VER}_${PLATFORM}.zip
    URL=$MIRROR/$FILE

    printf "    # %s\n" $URL
    printf "    %s: sha256:%s\n" $PLATFORM `fgrep $FILE $LCHECKSUMS | awk '{print $1}'`
}

printf "  # %s\n" $RCHECKSUMS
printf "  '%s':\n" $VER
dl darwin amd64
dl linux 386
dl linux amd64
dl linux arm
dl linux arm64
dl windows 386
dl windows amd64

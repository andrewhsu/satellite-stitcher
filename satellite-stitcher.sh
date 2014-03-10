#!/bin/bash -e

# Satellite Stitcher - combines pieces of a satellite map
# Copyright 2014 Andrew Hsu
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
# 
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
# 
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

usage() {
  echo "Usage: $0 [-n] <server> <xstart> <ystart> <xdelta> <ydelta> <filename>"
}

convert=convert
curl='curl -f -#'

while getopts 'n' opt; do
  case $opt in
    n ) convert="echo $convert"; curl="echo $curl" ;;
    ? ) usage; exit 1;;
  esac
done

shift $(($OPTIND - 1))

[ $# -lt 6 ] && usage && exit 2
[[ ! $2 =~ ^[0-9]+$ ]] && usage && exit 3
[[ ! $3 =~ ^[0-9]+$ ]] && usage && exit 4
[[ ! $4 =~ ^[0-9]+$ ]] && usage && exit 5
[[ ! $5 =~ ^[0-9]+$ ]] && usage && exit 6

server=$1
xstart=$2
ystart=$3
xdelta=$4
ydelta=$5
img=$6

blocks=()
strips=()
for (( x=$xstart; x<$xstart+$xdelta; x++ )); do
  for (( y=$ystart; y<$ystart+$ydelta; y++ )); do
    o="x${x}y${y}.jpg"
    [ ! -f $o ] && ${curl} -o $o "http://${server}/kh/v=145&x=${x}&y=${y}&z=20"
    blocks+=($o)
  done
  l="l${x}.jpg"
  ${convert} -monitor ${blocks[@]} -append $l
  blocks=()
  strips+=($l)
done

${convert} -monitor ${strips[@]} +append $img

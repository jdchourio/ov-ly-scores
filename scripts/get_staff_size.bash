#!/bin/bash
export inly=$1
inpdf=`echo $inly | sed 's/.ly/.pdf/'`

cible=$2
size=200

lowsize=0
highsize=0
lowpages=0
highpages=0

#
# fonction de base: staff-size => nbpages
#
function lycheck ()
{
  local isz=$(($1/10))
  local fsz=$(($1%10))
  cat $inly | sed -e "s/(set-global-staff-size .*)/(set-global-staff-size $isz.$fsz)/" > $inly~
  lilypond -l NONE $inly~
  npages=$((`pdfinfo $inpdf | grep Pages | sed -e 's/Pages://' -e 's/ //g'`))
}


# determination des bornes de départ
lycheck $size
if [ $npages -gt $cible ];
then
  # on a la borne haute, ...
  highsize=$size

  #... on cherche la borne basse
  lowsize=$size
  while [ $npages -gt $cible ]; 
  do
    lowsize=$(($lowsize-40))
    lycheck $lowsize
  done

else
  # on a la borne basse, ...
  lowsize=$size

  #... on cherche la borne haute
  highsize=$size
  while [ $npages -le $cible ]; 
  do
    highsize=$(($highsize+40))
    lycheck $highsize
  done
fi


#
# dichotomie
#
echo "dichotomie entre $lowsize et $highsize pour $cible pages"

while [ $(( $highsize - $lowsize )) -gt 1 ]; do
  size=$(( $lowsize + $highsize))
  size=$(($size/2))

  lycheck $size
  echo "staff-size $(($size/10)).$(($size%10)): => $npages pages"

  if [ $npages -gt $cible ];
  then
    highsize=$size
  else
    lowsize=$size
  fi
done

echo "$(($lowsize/10)).$(($lowsize%10))"

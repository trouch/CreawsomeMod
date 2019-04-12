#!/bin/sh

SRC_MACHINES="machines"
SRC_QUALITIES="src/quality"
OUT_QUALITIES="resources/quality"


processMachineQuality() {
    def=`echo $2 | sed 's/\//_/g'`
    name=`echo $2 | sed -E 's/.*\///g'`
    out=`printf "%q/%q_%q" $3 $name $1`
    
    echo "Copying $1 to $out"
    cat "$SRC_QUALITIES/$1" | sed -E "s/MACHINE_DEFINITION/$def/g" > $out
}

processMachineProfiles() {
    dir="$OUT_QUALITIES/$2"
    echo "Creating directory $dir"
    mkdir -p $dir
    for Q in $1
        do processMachineQuality $Q $M $dir
    done
}

processMachines() {
    for M in $2
        do processMachineProfiles "$1" $M
    done
}

MACHINES=`cat $SRC_MACHINES`
QUALITIES=`ls $SRC_QUALITIES`

processMachines "$QUALITIES" "$MACHINES"

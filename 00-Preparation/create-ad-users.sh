#!/bin/bash

cursisten=("Peter Baken"
"Chishala Wijmans"
"Roelof Jonkers"
"Michiel Schuurman"
"Jeroen Stork"
"Elbert Kroon"
"Jelco Schoolmeester"
"Daniel Jansen Schoonhoven"
"Mark den Hartog"
"Carlo de la Fosse")

cursistafkorting=("pbaken"
"cwijmans"
"rjonkers"
"mschuurman"
"jstork"
"ekroon"
"jschoolmeester"
"djansenschoonhoven"
"mdhartog"
"cdlfosse")

for ((i = 0; i < ${#cursisten[@]}; i++))
do
    upn="${cursistafkorting[$i]}@bitrainer.nl"
    displayname="${cursisten[$i]}"
    echo "Creating display-name ${displayname} upn ${upn}"
    az ad user create --display-name "${displayname}" --password "BITrainer.nl" \
    --user-principal-name "${upn}" --force-change-password-next-login false
done

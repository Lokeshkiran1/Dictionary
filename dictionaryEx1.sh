#!/bin/bash -x
declare -A sounds
sounds[dog]=bark;
sounds[pussy]=miyya;
sounds[cow]=amba;
echo " dog sounds " ${sounds[dog]}
echo " all the animals " ${!sounds[@]}
echo " number of animals "${#sounds[@]}

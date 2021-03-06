#!/bin/bash
# shellcheck disable=SC1090,SC2034,SC2154

## This Removes *.temp files

## Variables
SCRIPTDIRA=$(dirname $0)
source "$SCRIPTDIRA"/foldervars.sh

SCRIPTTEXT="Checking For Old Temp Files."
printf "$cyan"    "$SCRIPTTEXT"
echo "### $SCRIPTTEXT" | tee --append $RECENTRUN &>/dev/null
CHECKME=$TEMPCLEANUPTWO
if ls $CHECKME &> /dev/null;
then
  printf "$red"   "Purging Old Temp Files."
  rm $TEMPCLEANUPTWO
  echo "* Old Temp Files Purged." | tee --append $RECENTRUN &>/dev/null
else
  printf "$yellow"   "No Temp Files To Remove."
  echo "* No Temp Files To Purge." | tee --append $RECENTRUN &>/dev/null
fi

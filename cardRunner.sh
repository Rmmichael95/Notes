#!/bin/zsh

set -e

read "SET?Cardset: "

FILE="$NOTES_DIR/Spring18/flashcards/$SET - cards.csv"

main() {
   IFS=$'\t'; read -A q <<<$(shuf -n 1 "$FILE")
   echo "====================================================================="
   echo "Category: ${q[1]}"
   echo "Word: ${q[2]}"
   read _
   echo "Def:  ${q[3]}"
   echo "====================================================================="
   read _
   clear
}

while true; do
   main
done

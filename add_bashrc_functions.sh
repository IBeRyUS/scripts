#!/bin/bash
cp .bash_aliases ~/.
cd #
mkdir .trash
echo "rc(){
   for item in ""$@""
      do
         mv ""$item"" ~/.trash/ && echo ""Trashing: $item""
      done
}

gde(){
   git diff ""$@"" -- "":(exclude).cproject""
}" >> .bashrc

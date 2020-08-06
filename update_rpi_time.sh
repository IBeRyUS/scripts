if [ "${1}" == "" ];
   then
      printf "Please provide hostname. \n"
      exit 1
fi 
cur_time="\"$(date +"%m/%d/%y %T")\""
ssh -t pi@"${1}" "date; sudo date -s $cur_time" 

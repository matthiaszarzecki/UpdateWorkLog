# Updates the specified file ONLY on mondays with the
# current calendar-week and further date-details
# Week 11: 2020.03.09 - 2020.03.13
if [[ $(date +%u) -eq 1 ]] ; then
  file=/Users/matthiaszarzecki/Desktop/work_log.md
  echo "Updated Work Log with New Week Entry!"
  echo "#" Week `date +%V\:\ %Y.%m.%d` - `date -v +4d +%Y.%m.%d` | cat - $file > temp && mv temp $file
else
  echo "Did not update Work Log."
fi

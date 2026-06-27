echo "-----this is the change made in the new branch ---------------------------"

echo "hostname:$(hostname) | user: $USER | date: $(date) | OS version: $(lsb_release -ds)"

for i in git python3 pip3 ros2; do
  if  command -v $i &>/dev/null; then 
    echo "$i :[ok]"
  else 
    echo "$i : [missing]"
  fi
done

DISK_FREE=$(df -BG / |awk 'NR==2 {print $4}' | tr -d 'G')
if [ "$DISK_FREE" -lt 5 ]; then 
	echo '[LOW DISK]'
fi

echo ------------------------------

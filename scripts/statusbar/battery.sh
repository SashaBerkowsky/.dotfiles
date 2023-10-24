BAT=$(cat /sys/class/power_supply/BAT0/capacity)

if [ -z $BAT ]; then
  exit
fi

BAT_EVENT=$(cat /sys/class/power_supply/BAT0/uevent | head -n 3 | tail -n 1 | awk -F = '{print $2}')
if [ $BAT_EVENT = "Charging" ]; then
  echo "󰂄"
else
  case $BAT in
      100)         echo "󰁹";;
      9[0-9])      echo "󰂂";;
      8[0-9])      echo "󰂁";;
      7[0-9])      echo "󰂀";;
      6[0-9])      echo "󰁿";;
      5[0-9])      echo "󰁾";;
      4[0-9])      echo "󰁽";;
      3[0-9])      echo "󰁼";;
      2[0-9])      echo "󰁻";;
      1[0-9])      echo "󰁺";;
      *)           echo "󰂎";;
  esac
fi

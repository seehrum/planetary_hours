#!/bin/bash

read -ep "Hour sunrise: " hour_sunrise
read -ep "Minutes sunrise: " minutes_sunrise

read -ep "Hour sunset: " hour_sunset
read -ep "Minutes sunet: " minutes_sunset

read -ep "Hour sunrise of next day: " hour_sunrise_2
read -ep "Minutes sunrise of next day : " minutes_sunrise_2

HOURS_24="1440"

# DAY

SUM_1=$(echo "$hour_sunrise * 60" | bc)             # pega hora do nascimento do sol e transforma em minutos
SUM_2=$(echo "$SUM_1 + $minutes_sunrise" | bc)      # adiciona os minutos do nascimento do sol

SUM_3=$(echo "$hour_sunset * 60" | bc)              # pega a hora do por do sol e transforma em minutos
SUM_4=$(echo "$SUM_3 + $minutes_sunset" | bc)       # adiciona os minutos do por do sol
SUM_5=$(echo "$SUM_4 - $SUM_2" |bc)                 # soma por do sol - nascer do sol
SUM_6=$(echo "$SUM_5 / 12" |bc)                     # soma por do sol - nascer do sol e divide por 12

# NIGHT

SUM_7=$(echo "$hour_sunrise_2 * 60" | bc)
SUM_8=$(echo "$SUM_7 + $minutes_sunrise_2" | bc)
SUM_9=$(echo "$SUM_4 - $SUM_8" | bc)
SUM_10=$(echo "1440 - $SUM_9" | bc)
SUM_11=$(echo "$SUM_10 / 12" | bc)

# DAY
hour_day_1=$(date -d "$hour_sunrise:$minutes_sunrise today + 0 minutes" +'%H:%M')

minutes_x_1=$(echo "$SUM_6 * 1" | bc)
hour_day_2=$(date -d "$hour_sunrise:$minutes_sunrise today + $minutes_x_1  minutes" +'%H:%M')

minutes_x_2=$(echo "$SUM_6 * 2" | bc)
hour_day_3=$(date -d "$hour_sunrise:$minutes_sunrise today + $minutes_x_2  minutes" +'%H:%M')

minutes_x_3=$(echo "$SUM_6 * 3" | bc)
hour_day_4=$(date -d "$hour_sunrise:$minutes_sunrise today + $minutes_x_3  minutes" +'%H:%M')

minutes_x_4=$(echo "$SUM_6 * 4" | bc)
hour_day_5=$(date -d "$hour_sunrise:$minutes_sunrise today + $minutes_x_4  minutes" +'%H:%M')

minutes_x_5=$(echo "$SUM_6 * 5" | bc)
hour_day_6=$(date -d "$hour_sunrise:$minutes_sunrise today + $minutes_x_5  minutes" +'%H:%M')

minutes_x_6=$(echo "$SUM_6 * 6" | bc)
hour_day_7=$(date -d "$hour_sunrise:$minutes_sunrise today + $minutes_x_6  minutes" +'%H:%M')

minutes_x_7=$(echo "$SUM_6 * 7" | bc)
hour_day_8=$(date -d "$hour_sunrise:$minutes_sunrise today + $minutes_x_7  minutes" +'%H:%M')

minutes_x_8=$(echo "$SUM_6 * 8" | bc)
hour_day_9=$(date -d "$hour_sunrise:$minutes_sunrise today + $minutes_x_8  minutes" +'%H:%M')

minutes_x_9=$(echo "$SUM_6 * 9" | bc)
hour_day_10=$(date -d "$hour_sunrise:$minutes_sunrise today + $minutes_x_9  minutes" +'%H:%M')

minutes_x_10=$(echo "$SUM_6 * 10" | bc)
hour_day_11=$(date -d "$hour_sunrise:$minutes_sunrise today + $minutes_x_10  minutes" +'%H:%M')

minutes_x_11=$(echo "$SUM_6 * 11" | bc)
hour_day_12=$(date -d "$hour_sunrise:$minutes_sunrise today + $minutes_x_11  minutes" +'%H:%M')

# NIGHT
hour_night_1=$(date -d "$hour_sunset:$minutes_sunset today + 0 minutes" +'%H:%M')

minutes_nx_1=$(echo "$SUM_11 * 1" | bc)
hour_night_2=$(date -d "$hour_sunset:$minutes_sunset today + $minutes_nx_1  minutes" +'%H:%M')

minutes_nx_2=$(echo "$SUM_11 * 2" | bc)
hour_night_3=$(date -d "$hour_sunset:$minutes_sunset today + $minutes_nx_2  minutes" +'%H:%M')

minutes_nx_3=$(echo "$SUM_11 * 3" | bc)
hour_night_4=$(date -d "$hour_sunset:$minutes_sunset today + $minutes_nx_3  minutes" +'%H:%M')

minutes_nx_4=$(echo "$SUM_11 * 4" | bc)
hour_night_5=$(date -d "$hour_sunset:$minutes_sunset today + $minutes_nx_4  minutes" +'%H:%M')

minutes_nx_5=$(echo "$SUM_11 * 5" | bc)
hour_night_6=$(date -d "$hour_sunset:$minutes_sunset today + $minutes_nx_5  minutes" +'%H:%M')

minutes_nx_6=$(echo "$SUM_11 * 6" | bc)
hour_night_7=$(date -d "$hour_sunset:$minutes_sunset today + $minutes_nx_6  minutes" +'%H:%M')

minutes_nx_7=$(echo "$SUM_11 * 7" | bc)
hour_night_8=$(date -d "$hour_sunset:$minutes_sunset today + $minutes_nx_7  minutes" +'%H:%M')

minutes_nx_8=$(echo "$SUM_11 * 8" | bc)
hour_night_9=$(date -d "$hour_sunset:$minutes_sunset today + $minutes_nx_8  minutes" +'%H:%M')

minutes_nx_9=$(echo "$SUM_11 * 9" | bc)
hour_night_10=$(date -d "$hour_sunset:$minutes_sunset today + $minutes_nx_9  minutes" +'%H:%M')

minutes_nx_10=$(echo "$SUM_11 * 10" | bc)
hour_night_11=$(date -d "$hour_sunset:$minutes_sunset today + $minutes_nx_10  minutes" +'%H:%M')

minutes_nx_11=$(echo "$SUM_11 * 11" | bc)
hour_night_12=$(date -d "$hour_sunset:$minutes_sunset today + $minutes_nx_11  minutes" +'%H:%M')

echo "---"
echo "Sunrise: $hour_sunrise:$minutes_sunrise"
echo "Sunset: $hour_sunset:$minutes_sunset"
echo "Sunrise of the next day: $hour_sunrise_2:$minutes_sunrise_2"
echo "---"
echo "total minutes between current day sunrise to current day sunset"
echo "sum of hours on the same day (12 hours)"
echo "Total minutes: $SUM_5"
echo "each hour will add $SUM_6 minutes"
echo "---"
echo "total minutes between sunset on the current day and sunrise on the next day"
echo "sum of hours for the next day (24 hours) "
echo "Total minutes: $SUM_10"
echo "each hour will add $SUM_11 minutes"
echo "---DAY--- --------S---M---T---T---W---F---S--"
echo "1 - $hour_day_1   --- | ☉ | ☽ | ♂ | ☿ | ♃ | ♀ | ♄ |"
echo "2 - $hour_day_2   --- | ♀ | ♄ | ☉ | ☽ | ♂ | ☿ | ♃ |"
echo "3 - $hour_day_3   --- | ☿ | ♃ | ♀ | ♄ | ☉ | ☽ | ♂ |"
echo "4 - $hour_day_4   --- | ☽ | ♂ | ☿ | ♃ | ♀ | ♄ | ☉ |"
echo "5 - $hour_day_5   --- | ♄ | ☉ | ☽ | ♂ | ☿ | ♃ | ♀ |"
echo "6 - $hour_day_6   --- | ♃ | ♀ | ♄ | ☉ | ☽ | ♂ | ☿ |"
echo "7 - $hour_day_7   --- | ♂ | ☿ | ♃ | ♀ | ♄ | ☉ | ☽ |"
echo "8 - $hour_day_8   --- | ☉ | ☽ | ♂ | ☿ | ♃ | ♀ | ♄ |"
echo "9 - $hour_day_9   --- | ♀ | ♄ | ☉ | ☽ | ♂ | ☿ | ♃ |"
echo "10 - $hour_day_10  --- | ☿ | ♃ | ♀ | ♄ | ☉ | ☽ | ♂ |"
echo "11 - $hour_day_11  --- | ☽ | ♂ | ☿ | ♃ | ♀ | ♄ | ☉ |"
echo "12 - $hour_day_12  --- | ♄ | ☉ | ☽ | ♂ | ☿ | ♃ | ♀ |"
echo "---NIGHT---"
echo "1 - $hour_night_1   --- | ♃ | ♀ | ♄ | ☉ | ☽ | ♂ | ☿ |"
echo "2 - $hour_night_2   --- | ♂ | ☿ | ♃ | ♀ | ♄ | ☉ | ☽ |"
echo "3 - $hour_night_3   --- | ☉ | ☽ | ♂ | ☿ | ♃ | ♀ | ♄ |"
echo "4 - $hour_night_4   --- | ♀ | ♄ | ☉ | ☽ | ♂ | ☿ | ♃ |"
echo "5 - $hour_night_5   --- | ☿ | ♃ | ♀ | ♄ | ☉ | ☽ | ♂ |"
echo "6 - $hour_night_6   --- | ☽ | ♂ | ☿ | ♃ | ♀ | ♄ | ☉ |"
echo "7 - $hour_night_7   --- | ♄ | ☉ | ☽ | ♂ | ☿ | ♃ | ♀ |"
echo "8 - $hour_night_8   --- | ♃ | ♀ | ♄ | ☉ | ☽ | ♂ | ☿ |"
echo "9 - $hour_night_9   --- | ♂ | ☿ | ♃ | ♀ | ♄ | ☉ | ☽ |"
echo "10 - $hour_night_10  --- | ☉ | ☽ | ♂ | ☿ | ♃ | ♀ | ♄ |"
echo "11 - $hour_night_11  --- | ♀ | ♄ | ☉ | ☽ | ♂ | ☿ | ♃ |"
echo "12 - $hour_night_12  --- | ☿ | ♃ | ♀ | ♄ | ☉ | ☽ | ♂ |"

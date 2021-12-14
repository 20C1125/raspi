#! /bin/bash

echo 何回点灯させますか？
read not
echo 何秒で切り替えますか？
read speed
count=0	

	while [ $count != $not ]
	do
		echo 1 > /dev/myled0
		echo 2 > /dev/myled0
		sleep $speed
		echo 0 > /dev/myled0
		echo 3 > /dev/myled0
		sleep $speed
		count=`expr 1 + $count`
		echo $count回
	done

#!/bin/sh

monkey_stdout="monkey.txt"
monkey_stderr="error.txt"

if [ $# -ne 1 ]
then
	echo "usage: $0 ALLOWED_PACKAGE"
else
	adb shell monkey -p $1 \
	--pct-touch 40 --pct-motion 25 --pct-appswitch 10 --pct-rotation 5 \
	-s 12345 --throttle 400 \
	--ignore-crashes --ignore-timeouts --ignore-native-crashes \
	-v 500000 1>$monkey_stdout 2>$monkey_stderr
fi

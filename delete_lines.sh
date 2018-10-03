#! /bin/bash

lines=(1 3 5)
file=./tmp

# "insert a #delete# symbol before the line"
for line in ${lines[@]};do
	sed -i "${line}s/^/#delete#&/" $file
done

# "delete all lines begin with a #delete# symbol"
sed -i '/^#delete#/d' $file
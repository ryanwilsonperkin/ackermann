all: iterative recursive

iterative: iterative.adb
	gcc -c iterative.adb stack.adb
	gnatmake iterative.adb

recursive: recursive.adb
	gcc -c recursive.adb
	gnatmake recursive.adb

.PHONY: iterative recursive

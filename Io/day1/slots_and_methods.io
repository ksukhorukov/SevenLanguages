#!/usr/bin/env io

Box := clone Object do (
	slot1 := method("This is slot1 method" println)
	slot2 := method("This is slot2 method" println)
	slot3 := method("This is slot3 method" println)
)

Box slot1
Box slot2
Box slot3
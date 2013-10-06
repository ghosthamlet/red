REBOL [
	Title:   "Red/System dynamic linbary compiler test script"
	Author:  "Nenad Rakocevic & Peter W A Wood"
	File: 	 %dylib-test.r
	Tabs:	 4
	Rights:  "Copyright (C) 2011-2012 Nenad Rakocevic & Peter W A Wood. All rights reserved."
	License: "BSD-3 - https://github.com/dockimbel/Red/blob/origin/BSD-3-License.txt"
]

change-dir %../

~~~start-file~~~ "dylib compiler"

===start-group=== "dylib compiles"

		dll-target: switch/default fourth system/version [
			2 ["Darwin"]
			3 ["Windows"]
		][
			"Linux"
		]
	
	--test-- "compile dll1"
	--compile-dll %source/units/libtest-dll1.reds dll-target
	--assert qt/compile-ok?
	
	--test-- "compile dll2"
	--compile-dll %source/units/libtest-dll2.reds dll-target 
	--assert qt/compile-ok?
	
===end-group===
  
~~~end-file~~~

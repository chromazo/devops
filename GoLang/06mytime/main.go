package main

import (
	"fmt"
	"time"
)

func main() {

	fmt.Println("Welcome to golang")

	currentTime := time.Now()                                     //initializing time
	fmt.Println(currentTime.Format("01-02-2006 15:04:05 Monday")) //the value mentioned here always needs to be the same, to format date,time or Day

	setTime := time.Date(2024, time.September, 12, 13, 00, 00, 00, time.Local)
	fmt.Println(setTime.Format("01-02-2006 15:04:05 Monday"))

}

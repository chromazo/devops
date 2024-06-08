package main

import (
	"fmt"
	"sort"
)

func main() {
	fmt.Println("Welcome!!")
	var list = []string{"mango", "apple", "chikoo"}
	fmt.Printf("Type of the list is %T\n", list)
	fmt.Println("Value of list is: ", list)

	list = append(list, "pineapple", "strawberry")
	fmt.Println("Value of list is: ", list)
	list = append(list[1:4])
	fmt.Println("Value of list is: ", list)

	lala := make([]int, 3)
	lala[0] = 23
	lala[1] = 26
	lala[2] = 18
	//lala[3] = 33 //if we add any more value then the initial defined range, we will get error
	fmt.Printf("type of lala is %T\n", lala)
	fmt.Println("Value of lala is: ", lala)

	lala = append(lala, 25, 30, 16) //we are adding new value to the slice that exceeds the initial range so new memory alocation takes place and reange increases.for this we can use append
	fmt.Println("Value of lala is: ", lala)

	sort.Ints(lala) //sorting the slice of ints in increasing order.
	fmt.Println(lala)

	//remove value from slices based on index
	var num = []int{1, 2, 3, 4, 5}
	fmt.Println(num)
	var item int = 2
	num = append(num[:item], num[item+1:]...)
	fmt.Println(num)

}

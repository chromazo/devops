//pointer is a direct reference to the memory address of a variable.

package main

import "fmt"

func main() {
	fmt.Println("Welcome!!")
	// var ptr *int // we define a variable as a pointer by giving "*"<variable type> . eg: *int, *string

	// fmt.Println("The value of pointer is: ", ptr) // Default value is <nill>

	num := 100
	var ptr = &num // "&" is used by pointer for referencing a variable

	fmt.Println("The value of actual pointer is ", ptr)  //this will print the address of the variable where pointer is pointing
	fmt.Println("The value of actual pointer is ", *ptr) //print the value inside the pointer reference
}

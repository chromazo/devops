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

	*ptr = *ptr + 2 //we are now referencing the value in variable "num" and adding 2 to it
	fmt.Println(num) //The value of variable changed from 100 to 102. As the above operation was actually performed on the real variable.

}

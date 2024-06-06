//pointer is a direct reference to the memory address of a variable.

package main

import "fmt"

func main() {
	fmt.Println("Welcome!!")
	var ptr *int // we define a variable as a pointer by giving "*"<variable type> . eg: *int

	fmt.Println("The value of pointer is: ", ptr) // Default value is <nill>
}

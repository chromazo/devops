package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	welcome := "welcome to userinputs"
	fmt.Println(welcome)

	reader := bufio.NewReader(os.Stdin)
	fmt.Println("Enter your age below:")

	// comma ok or comma error
	input, _ := reader.ReadString('\n')
	fmt.Println("Your age is: ", input)
	fmt.Printf("The type of input is: %T", input)

}

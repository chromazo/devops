// best practice-- run "go mod init 'some_name' " before doing any work in new folder

package main

import "fmt"

const LoginToken string = "gdjfhkadhflksaa" //if first character of variable name is capital, it will act as a public variable

func main() {
	var username string = "shivam" // creating variable >> format -- var variable_name variable_type = value
	fmt.Println(username)
	fmt.Printf("variable is of type: %T \n", username)

	var isLoggedIn bool = true
	fmt.Println(isLoggedIn)
	fmt.Printf("variable is of type: %T \n", isLoggedIn)

	var smallVal uint8 = 255 // uint8 is 8bit, can take 0 to 255 as value = 2^8
	//16bit, uint16 = 2^16 , starts from 0 || 32bit, uint32 = 2^32 || 64bit, uint64 = 2^64
	// instead we can just use "int" or "uint"
	fmt.Println(smallVal)
	fmt.Printf("variable is of type: %T \n", smallVal)

	var smallFloatVal float32 = 345.7657645354
	fmt.Println(smallFloatVal)
	fmt.Printf("variable is of type: %T \n", smallFloatVal)

	var bigFloatVal float64 = 345.7657645354
	fmt.Println(bigFloatVal)
	fmt.Printf("variable is of type: %T \n", bigFloatVal)

	//default values and aliases

	var var2 int
	fmt.Println(var2)
	fmt.Printf("variable is of type: %T \n", var2)

	var var3 string
	fmt.Println(var3)
	fmt.Printf("variable is of type: %T \n", var3)

	//implicit type

	var var4 = "testing"
	fmt.Println(var4)

	//no var style

	numberOfDays := 30 //volorous operator ":=", only allowed within a method
	fmt.Println(numberOfDays)

	//using pubic const
	fmt.Println(LoginToken)
	fmt.Printf("type is: %T", LoginToken)

}

package main

import "fmt"

func main() {
	fmt.Println("This is Maps")

	cities := make(map[string]string)
	cities["M"] = "Mumbai"
	cities["I"] = "Indore"
	cities["P"] = "Pune"

	fmt.Println("The value of cities are: ", cities)
	fmt.Println("The value of I is", cities["I"])

	//to delete a key value in maps
	delete(cities, "I")
	fmt.Println("The value of cities are: ", cities)
}

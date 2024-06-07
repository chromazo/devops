package main

import "fmt"

func main() {
	fmt.Println("Welcome!!")

	var arr1 [3]string // var <array name> [array lenght]<type>, here type is string and len is 3. we always have to specify this.
	arr1[0] = "tom"    //Input value of each position in array. not all position needs to be filled.
	arr1[1] = "jerry"
	arr1[2] = "lin"
	fmt.Println("The value of arr1 is: ", arr1)       //prints the data in the array
	fmt.Println("The length of arr1 is: ", len(arr1)) //prints the lenght of array (3), irrespective if the position are filled or not

	var arr2 = [2]string{"lala", "kala"} //adding the data in the array in same line
	fmt.Println("The value of arr2 is: ", arr2)
	fmt.Println("The length of arr2 is: ", len(arr2))

}

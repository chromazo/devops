package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func main() {
	fmt.Println("welcome, kindly provide rating:")

	reader := bufio.NewReader(os.Stdin)
	input, _ := reader.ReadString('\n')

	new, err := strconv.ParseInt(strings.TrimSpace(input), 8, 16)

	if err != nil {
		println("error:", err)
	} else {
		println("thanks we have added 1 to the rating!!", new+1)
	}

}

package main

import "fmt"

func main() {
	var a, b int
	matrix := [][]int{{0, 0}, {0, 0}}

	fmt.Scanf("%d %d", &a, &b)
	fmt.Scanf("%d %d", &matrix[0][0], &matrix[0][1])
	fmt.Scanf("%d %d", &matrix[1][0], &matrix[1][1])

	fmt.Println(matrix[a-1][b-1])
}

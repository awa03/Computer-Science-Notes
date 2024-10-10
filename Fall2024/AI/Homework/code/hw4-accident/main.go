package main

import (
	"fmt"
)

func isPar(c byte) bool {
	return c == '(' || c == ')'
}

func isValidStr(s string) bool {
	count := 0
	for i := 0; i < len(s); i++ {
		if s[i] == '(' {
			count++
		}
		if s[i] == ')' {
			count--
		}
		if count < 0 {
			return false
		}
	}
	return count == 0
}

func removeInvalidPar(s string) string {
	if len(s) == 0 {
		return "-1"
	}

	set := map[string]struct{}{}
	queue := make([]string, 0)
	queue = append(queue, s)
	found := false
	var result string

	for len(queue) != 0 {
		str := queue[0]
		queue = queue[1:]

		if isValidStr(str) {
			found = true
			result = str
			break
		}

		if !found {
			for i := 0; i < len(str); i++ {
				if isPar(str[i]) {
					newStr := str[:i] + str[i+1:]
					if _, exists := set[newStr]; !exists {
						queue = append(queue, newStr)
						set[newStr] = struct{}{}
					}
				}
			}
		}
	}

	if found {
		return result
	}
	return "-1"
}

func main() {
	str := "()((())"
	newStr := removeInvalidPar(str)

	fmt.Println("Old string:", str)
	fmt.Println("New string:", newStr)
}


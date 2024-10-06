package main
import (
  "fmt"
)

type point struct {
  row int
  col int
}
  // // Push to the queue
  // queue = append(queue, 1)
  // // Top (just get next element, don't remove it)
  // x = queue[0]
  // // Discard top element
  // queue = queue[1:]
  // // Is empty ?
  // if len(queue) == 0 {
  //     fmt.Println("Queue is empty !")

func isValidMove(c string, v bool) bool { 
  return c == "-" && !v
}
 
func findShortestPath(m [8][6] string, start point) ([]int, error){
  queue := make([]int, 0)
  var visited = [8][6]bool {
    {false, false, false, false, false, false},
    {false, false, false, false, false, false},
    {false, false, false, false, false, false},
    {false, false, false, false, false, false},
    {false, false, false, false, false, false},
    {false, false, false, false, false, false},
    {false, false, false, false, false, false},
    {false, false, false, false, false, false},
  }

  // Mark starting point of search
  visited[start.row][start.col] = true



  return queue, nil

}

func main(){
  var m = [8][6]string {
    {"x", "#", "#", "#", "-", "-"},
    {"-", "-", "-", "#", "#", "-"},
    {"#", "#", "-", "-", "-", "-"},
    {"-", "-", "#", "#", "#", "-"},
    {"-", "#", "-", "-", "-", "-"},
    {"-", "-", "#", "-", "#", "#"},
    {"#", "-", "-", "-", "-", "p"},
    {"#", "-", "#", "#", "#", "-"},
  }

  fmt.Print(m)

  start := point{0,0}
  points, e := findShortestPath(m, start);

  if e != nil {
    fmt.Println("There is an error somewhere here... \n", e)
  }

  fmt.Println("Yayyyy Path Found \n", points)
}

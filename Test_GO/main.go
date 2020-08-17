package main

import (
   "fmt"
)

var f = fmt.Println

func main() {
   f("开始")

   arrTest := []int{1,2,3,4,4,5}
   a := arrTest[:]
   b := a
   a[0] = 888888
   f(b)
   f(a)
   f(arrTest)

   f("结束")
}

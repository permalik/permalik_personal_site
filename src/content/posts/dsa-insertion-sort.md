---
type: TechDoc
title: Insertion Sort
description: "Algorithm summary; polyglot implementation"
tags: ['techDoc', 'software', 'dsa', 'go', 'insertion_sort']
publishedAt: 07-14-2024
updatedAt: 07-14-2024
url: dsa-insertion-sort
sources: [
  'Introduction to Algorithms https://mitpress.mit.edu/9780262046305/introduction-to-algorithms/',
]
---
## Summary
Begin with a zero-indexed array containing integers `a[]`.  
Store its length in a separate variable `n`.  
Iterate the array from `a[1]` to `a[n]`.  
Track the primary index at `a[1]` and increment its value with each iteration.  
Store the value of the primary index in a variable which will be updated with each passing iteration.  
Track an additional index which maps to that immediately before the primary index.  
Loop, shifting all higher value integers to the right.  
Insert the temporary value into the remaining location.

### Implementation
#### V1: Go
```go
func insertionSort(arr *[9]int, len int) {
    for i := 1; i < len; i++ {
        tmp := arr[i]
        j := i - 1

         for j >= 0 && arr[j] > tmp {
             arr[j+1] = arr[j]
             j--
         }
         arr[j+1] = tmp
    }
}

func main() {
    array := [9]int{5, 7, 3, 6, 1, 4, 9, 8, 2}
    length := len(array)
    insertionSort(&array, length)
    fmt.Println("Sorted Array:\n", array)
}
```

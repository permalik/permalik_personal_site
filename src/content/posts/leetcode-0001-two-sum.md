---
type: TechDoc
title: Two Sum
description: "Dynamic Programming: LeetCode"
tags: ['tech', 'dsa', 'leetcode', 'go']
publishedAt: 10-27-2024
updatedAt: 10-27-2024
url: leetcode-0001-two-sum
---
## Summary
### Iterative Brute Force
Beginning with the first element in the series, check each element against the remainder of 
elements until all combinations have been evaluated.  
Return each index of the successful pair or empty if a pair is not found.

#### Steps
- loop through each element of the series `nums` from index `0` to index `nums_length - 1`
- within the first loop, loop again through each element of the series `nums` this time 
starting from index `1` until `nums_length - 1`
- compare for equality the inner loop value of `nums[n]` with the difference of the outer loop 
`nums[n]` subtracted from `target`
- if these values are equivalent, return the two indexes of each respective loop
- if both loops complete without a successful comparison, return a non-result

##### Complexity Analysis
**Time:** O(n^2)  
**Space:** O(1)

## Implementation
`go (Iterative Brute Force)`
```go
func main() {
	nums := []int{3, 8, 2, -12, 24}
	target := 12
	twoSum(nums, target)
}

func twoSum(nums []int, target int) []int {
	for i := 0; i < len(nums); i++ {
		for j := i + 1; j < len(nums); j++ {
			if nums[j] == target-nums[i] {
				return []int{i, j}
			}
		}
	}
	return []int{}
}
```
<!--`js (Iterative Brute Force)`-->
<!--```js-->
<!--function main() {-->
<!--    let nums = [3, 8, 2, -12, 24];-->
<!--    let target = 12;-->
<!---->
<!--    twoSum(nums, target);-->
<!--};-->
<!---->
<!--function twoSum(nums, target) {-->
<!--    for (let i = 0; i < nums.length; i++) {-->
<!--        for (let j = i + 1; j < nums.length; j++) {-->
<!--            if (nums[j] === target - nums[i]) {-->
<!--                return [i, j];-->
<!--            }-->
<!--        }-->
<!--    }-->
<!--    return [];-->
<!--};-->
<!---->
<!--main();-->
<!--```-->

<!--`rust (Iterative Brute Force)`-->
<!--```rust-->
<!--fn main() {-->
<!--    let nums = vec![3, 8, 2, -12, 24];-->
<!--    let target: i32 = 12;-->
<!---->
<!--    two_sum(&nums, &target);-->
<!--}-->
<!---->
<!--fn two_sum(nums: &Vec<i32>, target: &i32) -> Vec<i32> {-->
<!--    for i in 0..nums.len() {-->
<!--        for j in (i + 1)..nums.len() {-->
<!--            if nums[i] == target - nums[j] {-->
<!--                let index_i: i32 = i.try_into().unwrap();-->
<!--                let index_j: i32 = j.try_into().unwrap();-->
<!--                return vec![index_i, index_j];-->
<!--            }-->
<!--        }-->
<!--    }-->
<!--    return Vec::new();-->
<!--}-->
<!--```-->

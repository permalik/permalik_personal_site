---
type: TechDoc
title: Binary Search
description: "Dynamic Programming: LeetCode"
tags: ['tech', 'dsa', 'binary_search', 'go']
publishedAt: 11-25-2024
updatedAt: 11-26-2024
url: leetcode-0704-binary-search
---
## Summary
### Iterative
Given an array of integers `nums` which is sorted in ascending order, 
and an integer `target`, write a function to search `target` in `nums`. 
If `target` exists, return its index. Otherwise, return `-1`.

#### Steps
Determine the two outermost indices of the sequence in a zero-based 
collection.  
- the first is the 0th index `low`
- the second index is the length of the collection minus one `high`
Iterate the sequence so long as `low` is less than or equal to `high`.
Determine the middle index of the sequence.  
If the middle item of the collection equals target, return the middle 
index.  
If the middle item is greater than target, `high` becomes the middle 
index less one. 
If the middle item is not greater than target, `low` becomes the 
middle index plus one. 
If the first condition never returns target as the middle index, 
return `-1`.

##### Complexity Analysis
**Time:** O(log n)
**Space:** O(1)

### Implementation
`c (Iterative)`
```c
int search(int nums[], int len, int target) {
    int l = 0;
    int h = len - 1;

    while (l <= h) {
        int m = (h + l) / 2;
        if (nums[m] == target) {
            return m;
        }
        if (nums[m] > target) {
            h = m - 1;
        } else {
            l = m + 1;
        }
    }

    return -1;
}

int main(void) {
    int nums[] = { -1, 0, 3, 5, 9, 12 };
    int target = 9;
    int len = sizeof(nums) / sizeof(nums[0]);

    int s = search(nums, len, target);
    printf("%d\n", s);

    return 0;
}
```

<br />

`go (Iterative)`
```go
func main() {
	nums := []int{-1, 0, 3, 5, 9, 12}
	target := 9
	s := search(nums, target)
	fmt.Println(s)
}

func search(nums []int, target int) int {
	l := 0
	h := len(nums) - 1

	for l <= h {
		m := (h + l) / 2
		if nums[m] == target {
			return m
		}
		if nums[m] > target {
			h = m - 1
		} else {
			l = m + 1
		}
	}

	return -1
}
```

<br />

`c# (Iterative)`
```csharp
namespace Solution
{
    public class Program
    {
        public static void Main()
        {
            int[] nums = new int[] { -1, 0, 3, 5, 9, 12 };
            int target = 9;

            int s = Search(nums, target);
            Console.WriteLine(s);
        }

        public static int Search(int[] nums, int target)
        {
            int l = 0;
            int h = nums.Length - 1;

            while (l <= h)
            {
                int m = (h + l) / 2;
                if (nums[m] == target)
                {
                    return m;
                }
                if (nums[m] > target)
                {
                    h = m - 1;
                }
                else
                {
                    l = m + 1;
                }
            };

            return -1;
        }
    }
}
```

The array class has various methods of removing elements from the array.

Let's look at the array
```
arr = [5, 6, 5, 4, 3, 1, 2, 5, 4, 3, 3, 3] 
```
- Delete an element from the end of the array
```
> arr.pop
 => 3
```
- Delete an element from the beginning of the array
```
> arr.shift
 => 5
```
- Delete an element at a given position
```
 > arr.delete_at(2)
 => 4
```
- Delete all occurrences of a given element
```
> arr.delete(5)
 => 5
 > arr
 => [6, 3, 1, 2, 4, 3, 3]
```
Your task is to complete the functions below using syntax as explained above.
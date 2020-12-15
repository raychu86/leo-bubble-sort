// The 'bubble-sort' main function.
function main(arr: [u32; 10]) -> [u32; 10] {

    console.log("Unsorted array: {}", arr);

    let sorted = bubble_sort(arr);

    console.log("Sorted array: {}", sorted);

    return sorted
}

// Execute the bubble sort algorithm on an array of size 10.
function bubble_sort(mut arr: [u32; 10]) -> [u32; 10] {
    // Traverse the entire array
    for i in 0..10 {
        
        for j in 0..9-i {
            // Move the smaller elements forward
            if arr[j+1] < arr[j] {
                // Swap the elemets at indexes `j` and `j+1`
                let swap = arr[j];
                arr[j] = arr[j+1];
                arr[j+1] = swap;
            }            
        }
    }

    return arr
}

test function test_bubble_sort() {
    let arr: [u32; 10] = [8u32, 2u32, 4u32, 3u32, 5u32, 10u32, 7u32, 1u32, 9u32, 6u32];
    let expected: [u32; 10] = [1u32, 2u32, 3u32, 4u32, 5u32, 6u32, 7u32, 8u32, 9u32, 10u32];

    let result = bubble_sort(arr);

    console.log("Result is: {}", result);

    console.assert(result == expected);
}

test function test_bubble_sort_2() {
    let arr: [u32; 10] = [34u32, 52u32, 999999u32, 84u32, 215u32, 102u32, 888u32, 9292u32, 50482u32, 954u32];
    let expected: [u32; 10] = [34u32, 52u32, 84u32, 102u32, 215u32, 888u32, 954u32, 9292u32, 50482u32, 999999u32];

    let result = bubble_sort(arr);

    console.log("Result is: {}", result);

    console.assert(result == expected);
}

function bubbleSort(array) {
  let notSorted = true;
  while (notSorted) {
    let itWasNotSorted;
    for (let i = 0; i < array.length - 1; i += 1) {
      if (array[i+1] < array[i]) {
        [array[i+1], array[i]] = [array[i], array[i+1]];
        itWasNotSorted = true;
      }
    }
    if (itWasNotSorted) {
      notSorted = true;
    } else {
      notSorted = false;
    }
  }
  return array;
}



const array1 = [5, 3];
bubbleSort(array1);
console.log(array1);    // [3, 5]

const array2 = [6, 2, 7, 1, 4];
bubbleSort(array2);
console.log(array2);    // [1, 2, 4, 6, 7]

const array3 = ['Sue', 'Pete', 'Alice', 'Tyler', 'Rachel', 'Kim', 'Bonnie'];
bubbleSort(array3);
console.log(array3);    // ["Alice", "Bonnie", "Kim", "Pete", "Rachel", "Sue", "Tyler"]
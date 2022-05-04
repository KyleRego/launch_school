function buyFruit(pairArray) {
  let result = [];
  pairArray.forEach(pair => {
    for (let i = 0; i < pair[1]; i += 1) {
      result.push(pair[0]);
    }
  });
  return result;
}

console.log(buyFruit([['apple', 3], ['orange', 1], ['banana', 2]]));
// returns ["apple", "apple", "apple", "orange", "banana", "banana"]
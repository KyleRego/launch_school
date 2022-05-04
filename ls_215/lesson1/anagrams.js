function anagram(word, list) {
  return list.filter(possibleAnagram => {
    return sortString(word) === sortString(possibleAnagram);
  })
}

function sortString(string) {
  return string.split('').sort().join('');
}

console.log(anagram('listen', ['enlists', 'google', 'inlets', 'banana']));  // [ "inlets" ]
console.log(anagram('listen', ['enlist', 'google', 'inlets', 'banana']));   // [ "enlist", "inlets" ]
let bands = [
  { name: 'sunset rubdown', country: 'UK', active: false },
  { name: 'women', country: 'Germany', active: false },
  { name: 'a silver mt. zion', country: 'Spain', active: true },
];

function processBands(data) {
  return data.map(band => {
    return { name: processTitle(band.name), country: 'Canada', active: band.active };
  });
}

function processTitle(words) {
  let wordArray = words.split(' ')
  wordArray = wordArray.map(word => {
    word = word[0].toUpperCase() + word.slice(1);
    return word.replace('.', '');
  })
  return wordArray.join(' ');
}

console.log(processTitle('hello world'));
console.log(processBands(bands));
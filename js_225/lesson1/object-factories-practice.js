function makeCountry(name, continent, visited = false) {
  return {
    name,
    continent,
    visited,
    getDescription() {
      let output = this.name + ' is located in ' + this.continent + '.';
      output += ' I ' + (this.visited ? 'have' : 'haven\'t') + ' visited ' + this.name + '.';
      return output;
    },
    visitCountry() {
      this.visited = true;
    },
  }
}

let canada = makeCountry('Canada', 'North America');

console.log(canada.getDescription()); // "Canada is located in North America. I haven't visited Canada."
console.log(canada.visitCountry());
console.log(canada.getDescription()); // "Canada is located in North America. I have visited Canada."

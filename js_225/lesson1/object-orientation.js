
function createProduct(id, name, stock, price) {
  return {
    id,
    name,
    stock,
    price,

    setPrice(price) {
      if (price >= 0) {
        this.price = price;
      } else {
        console.log('New price was invalid.')
      }
    },

    describeProduct() {
      console.log(`id: ${this.id}`);
      console.log(`name: ${this.name}`);
      console.log(`stock: ${this.stock}`);
      console.log(`price: ${this.price}`);
    }
  }
}

let scissors = createProduct(0, 'Scissors', 8, 10);
let drill = createProduct(1, 'Cordless Drill', 15, 45);

scissors.setPrice(30);
scissors.describeProduct();

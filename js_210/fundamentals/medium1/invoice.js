function invoiceTotal(...amounts) {
  let total = 0;
  for (let i = 0; i < amounts.length; i++) {
    total += amounts[i];
  }
  return total;
}

console.log(invoiceTotal(20, 30, 40, 50, 40, 40));

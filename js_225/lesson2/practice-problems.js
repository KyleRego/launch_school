let invoices = {
  unpaid: [],

  paid: [],

  add: function(name, amount) {
    let newUnpaid = {name, amount};
    this.unpaid.push(newUnpaid);
  },

  totalDue: function() {
    let sum = 0;
    this.unpaid.forEach(unpaidObject => {
      sum += unpaidObject.amount;
    });
    return sum;
  },

  totalPaid: function() {
    let sum = 0;
    this.paid.forEach(paidObject => {
      sum += paidObject.amount;
    });
    return sum;
  },

  payInvoice: function(name) {
    let newUnpaid = [];
    this.unpaid.forEach(unpaidObject => {
      if (unpaidObject.name === name) {
        this.paid.push(unpaidObject);
      } else {
        newUnpaid.push(unpaidObject);
      }
    })
    this.unpaid = newUnpaid;
  },
};

invoices.add('Due North Development', 250);
invoices.add('Moonbeam Interactive', 187.50);
invoices.add('Slough Digital', 300);

console.log(invoices.totalDue());

invoices.payInvoice('Due North Development');
invoices.payInvoice('Slough Digital');

console.log(invoices.totalPaid());
console.log(invoices.totalDue());

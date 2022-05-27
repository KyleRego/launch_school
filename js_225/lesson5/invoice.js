function createInvoice(services = {}) {
  let invoice = {
    phone: services.phone || 3000,
    internet: services.internet || 5500,
  };

  invoice.total = function () {
    return this.phone + this.internet;
  };

  return invoice;
}

function createPayment(services = {}) {
  let payment = {
    phone: services.phone || 0,
    internet: services.internet || 0,
    amount: services.amount,
    total() {
      if (this.amount) {
        return this.amount;
      } else {
        return this.phone + this.internet;
      }
    },
  };
  return payment;
}

let invoice = createInvoice({
  phone: 1200,
  internet: 4000,
});

let payment1 = createPayment({
  amount: 2000,
});

let payment2 = createPayment({
  phone: 1000,
  internet: 1200,
});

let payment3 = createPayment({
  phone: 1000,
});

invoice.addPayment(payment1);
invoice.addPayments([payment2, payment3]);
invoice.amountDue();       // this should return 0
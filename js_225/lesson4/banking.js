function makeAccount() {
  let accountNumber = 100;
  let balance = 0;
  let transactions = [];
  return {
    number: accountNumber++,
    deposit(amount) {
      balance += amount;
      transactions.push({type: 'deposit', amount: amount})
      return amount;
    },
    withdraw(amount) {
      if (balance < amount) {
        amount = balance;
      }
      balance -= amount;
      transactions.push({type: 'withdrawal', amount: amount})
      return amount;
    },
    balance() {
      return balance;
    },
    transactions() {
      return transactions;
    },
  };
}

function makeBank() {
  let accounts = [];
  return {
    openAccount() {
      let account = makeAccount();
      accounts.push(account);
      return account;
    },
    transfer(source, destination, amount) {
      destination.deposit(source.withdraw(amount));
    }
  };
}

let bank = makeBank();

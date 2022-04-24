let guess;

for (let i = 0; i < 3; i++) {
  guess = prompt('What is the password? ')
  if (guess === 'password') {
    break
  }
}

if (guess === 'password') {
  console.log('You have successfully logged in.')
} else {
  console.log('You have been denied access.')
}
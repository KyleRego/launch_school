let score1 = parseInt(prompt('Enter score 1: '), 10);
let score2 = parseInt(prompt('Enter score 2: '), 10);
let score3 = parseInt(prompt('Enter score 3: '), 10);

function grade_for_scores(score1, score2, score3) {
  let avg = (score1 + score2 + score3) / 3
  if (avg >= 90) {
    return 'A';
  } else if (avg >= 80) {
    return 'B'
  } else if (avg >= 70) {
    return 'C'
  } else if (avg >= 60) {
    return 'D'
  } else {
    return 'F'
  }
}

const grade = grade_for_scores(score1, score2, score3)
console.log(`Based on the average of your three scores your letter grade is "${grade}".`)
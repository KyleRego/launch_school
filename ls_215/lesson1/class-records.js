let studentScores = {
  student1: {
    id: 123456789,
    scores: {
      exams: [90, 95, 100, 80],
      exercises: [20, 15, 10, 19, 15],
    },
  },
  student2: {
    id: 123456799,
    scores: {
      exams: [50, 70, 90, 100],
      exercises: [0, 15, 20, 15, 15],
    },
  },
  student3: {
    id: 123457789,
    scores: {
      exams: [88, 87, 88, 89],
      exercises: [10, 20, 10, 19, 18],
    },
  },
  student4: {
    id: 112233445,
    scores: {
      exams: [100, 100, 100, 100],
      exercises: [10, 15, 10, 10, 15],
    },
  },
  student5: {
    id: 112233446,
    scores: {
      exams: [50, 80, 60, 90],
      exercises: [10, 0, 10, 10, 0],
    },
  },
};

function computeExamAverageForStudent(student) {
  const examScores = student.scores.exams;
  const total = examScores.reduce((accumulator, currentValue) => {
    return accumulator + currentValue
  });
  return total / examScores.length;
}

function computeExercisesSumForStudent(student) {
  const exerciseScores = student.scores.exercises;
  return exerciseScores.reduce((accumulator, currentValue) => {
    return accumulator + currentValue;
  });
}

function computeNumericalGrade(examAverage, exercisesSum) {
  const EXAM_WEIGHT = 0.65;
  const EXERCISES_WEIGHT = 0.35;
  return Math.round(examAverage * EXAM_WEIGHT + exercisesSum * EXERCISES_WEIGHT);
}

function computeLetterGrade(roundedGrade) {
  if (roundedGrade >= 93) {
    return 'A';
  } else if (roundedGrade >= 85) {
    return 'B';
  } else if (roundedGrade >= 77) {
    return 'C';
  } else if (roundedGrade >= 69) {
    return 'D';
  } else if (roundedGrade >= 60) {
    return 'E';
  } else if (roundedGrade <= 59) {
    return 'F';
  }
}

function getExamScores(students) {
  let examScoresArray = [];
  students.forEach(student => {
    student.scores.exams.forEach((exam, index) => {
      if (examScoresArray[index] === undefined) {
        examScoresArray[index] = [exam];
      } else {
        examScoresArray[index].push(exam);
      }
    })
  })
  console.log(examScoresArray);
  return examScoresArray;
}

function computeAverage(arrayOfNumbers) {
  const total = arrayOfNumbers.reduce((accumulator, currentValue) =>  {
    return accumulator + currentValue;
  });
  return total / arrayOfNumbers.length;
}

function computeMinimum(arrayOfNumbers) {
  let min = Infinity;
  arrayOfNumbers.forEach(number => {
    if (number < min) {
      min = number;
    }
  })
  return min;
}

function computeMaximum(arrayOfNumbers) {
  let max = -Infinity;
  arrayOfNumbers.forEach(number => {
    if (number > max) {
      max = number;
    }
  })
  return max;
}

function generateClassRecordSummary(scores) {
  const students = Object.keys(scores).map(name => scores[name]);
  const studentGradesArray = students.map(student => {
    const examAverage = computeExamAverageForStudent(student);
    const exercisesSum = computeExercisesSumForStudent(student);
    const numericalGrade = computeNumericalGrade(examAverage, exercisesSum);
    const letterGrade = computeLetterGrade(numericalGrade);
    return `${numericalGrade} (${letterGrade})`
  });
  const examScoresArray = getExamScores(students);
  const examsArray = examScoresArray.map(examScoreArray => {
    return {
      average: computeAverage(examScoreArray),
      minimum: computeMinimum(examScoreArray),
      maximum: computeMaximum(examScoreArray),
    }
  })
  return { studentGrades: studentGradesArray, exams: examsArray };
}

console.log(generateClassRecordSummary(studentScores));

// returns:
// {
//   studentGrades: [ '87 (B)', '73 (D)', '84 (C)', '86 (B)', '56 (F)' ],
//   exams: [
//     { average: 75.6, minimum: 50, maximum: 100 },
//     { average: 86.4, minimum: 70, maximum: 100 },
//     { average: 87.6, minimum: 60, maximum: 100 },
//     { average: 91.8, minimum: 80, maximum: 100 },
//   ],
// }
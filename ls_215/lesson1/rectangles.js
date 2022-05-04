function totalArea(arrayOfRectangles) {
  let area = arrayOfRectangles.reduce((accumulator, currentValue) => {
    return currentValue[0]*currentValue[1] + accumulator;
  }, 0);
  return area;
}

function totalSquareArea(arrayOfRectangles) {
  let squares = arrayOfRectangles.filter(element => element[0] === element[1]);
  let areas = squares.map(element => element[0] * element[1]);
  let totalArea = areas.reduce((accumulator, currentValue) => {
    return currentValue + accumulator;
  });
  return totalArea;
}

let rectangles = [[3, 4], [6, 6], [1, 8], [9, 9], [2, 2]];

console.log(totalArea(rectangles));    // 141
console.log(totalSquareArea(rectangles));   // 121

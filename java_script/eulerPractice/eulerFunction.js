const lib = require("../arrayAssignment/arrayAssignmentFunction.js")
const {findEvenNumbers,findOddNumbers,calculateSum} = lib;

const isDivisible = function ( number, numbersArray){
  let isDivisible = false;
  for(numberToCheck of numbersArray){
    if(!(number%numberToCheck)){
      isDivisible = true;
    }
  }
  return isDivisible;
}

const giveArrayOfMultiples = function ( limit, multiplesToGiveArray){
  multipleNumbers = [];
  for(let number = 1; number <= limit; number++){
    if(isDivisible(number,multiplesToGiveArray)){
      multipleNumbers.push(number);
    }
  }
  return multipleNumbers;
}

exports.giveMultiples = giveArrayOfMultiples;
exports.isDivisible = isDivisible;
exports.calculateSum = calculateSum;
console.log(calculateSum(giveArrayOfMultiples(10,[3,5,6])))
console.log(giveArrayOfMultiples(10,[3,5,6]))
console.log(giveArrayOfMultiples(10,[3,5]))

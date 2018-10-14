const assert = require("assert");
const {giveMultiples,calculateSum,isDivisible} = require("./eulerFunction.js");
actualOutput = calculateSum(giveMultiples(10,[3,5]));
assert.deepEqual(actualOutput,33);
actualOutput2 = calculateSum(giveMultiples(10,[3,5,7]));
assert.deepEqual(actualOutput2,40);
console.log("-------------Everything is fine-----------------");

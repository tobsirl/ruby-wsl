// Given a string str, reverse it and omit all non-alphabetic characters.
function reverseLetter(str) {
  return str
    .split('')
    .reverse()
    .join('')
    .replace(/[^a-zA-Z]/g, '');
}

// Write a function get_char() / getChar() which takes a number and returns the corresponding ASCII char for that value.
function getChar(c) {
  return String.fromCharCode(c);
}

// Sum all the numbers of a given array ( cq. list ), except the highest and the lowest element ( by value, not by index! ).
// If an empty value ( null, None, Nothing etc. ) is given instead of an array, or the given array is an empty list or a list with only 1 element, return 0.
function sumArray(array) {
  if (array === null || array.length <= 1) {
    return 0;
  }
  return array
    .sort((a, b) => a - b)
    .slice(1, -1)
    .reduce((a, b) => a + b, 0);
}

// Given an integral number, determine if it's a square number
var isSquare = function (n) {
  return Math.sqrt(n) % 1 === 0;
};

// Regex validate PIN code 7kyu
// ATM machines allow 4 or 6 digit PIN codes and PIN codes cannot contain anything but exactly 4 digits or exactly 6 digits.
// If the function is passed a valid PIN string, return true, else return false.
function validatePIN(pin) {
  return /^(\d{4}|\d{6})$/.test(pin);
}

// Anagram Detection 7kyu
const isAnagram = (test, original) => {
  const sort = (str) => str.toLowerCase().split('').sort().join('');
  return sort(test) === sort(original);
};

String.prototype.sortLetters = function () {
  return this.toLowerCase().split('').sort().join('');
};

var isAnagram = function (test, original) {
  return test.sortLetters() == original.sortLetters();
};

function isAnagram(test, original) {
  return (
    test.toLowerCase().split('').sort().join('') ===
    original.toLowerCase().split('').sort().join('')
  );
}

// Count the divisors of a number 7kyu
// Count the number of divisors of a positive integer n.
function getDivisorsCnt(n) {
  let count = 0;
  for (let i = 1; i <= n; i++) {
    if (n % i === 0) {
      count++;
    }
  }
  return count;
}

// Regular Ball Super Ball 8kyu
// Create a class Ball. Ball objects should accept one argument for "ball type" when instantiated.
// If no arguments are given, ball objects should instantiate with a "ball type" of "regular."
var Ball = function (ballType) {
  this.ballType = ballType || 'regular';
};

class Ball {
  constructor(ballType = 'regular') {
    this.ballType = ballType;
  }
}

// Unique In Order 6kyu
// Implement the function unique_in_order which takes as argument a sequence and returns a list of items without any elements
//  with the same value next to each other and preserving the original order of elements.
var uniqueInOrder = function (iterable) {
  return [...iterable].filter((a, i) => a !== iterable[i - 1]);
}

// Printer Errors 7kyu
// In a factory a printer prints labels for boxes. For one kind of boxes the printer has to use colors which, for the sake of simplicity, are named with letters from a to m.
// The colors used by the printer are recorded in a control string. For example a "good" control string would be aaabbbbhaijjjm meaning that the printer used three times color a, four times color b, one time color h then one time color a...
// Sometimes there are problems: lack of colors, technical malfunction and a "bad" control string is produced e.g. aaaxbbbbyyhwawiwjjjwwm with letters not from a to m.
// You have to write a function printer_error which given a string will output the error rate of the printer as a string representing a rational whose numerator is the number of errors and the denominator the length of the control string. Don't reduce this fraction to a simpler expression.
// The string has a length greater or equal to one and contains only letters from ato z.
function printerError(s) {
  return s.match(/[^a-m]/g).length + '/' + s.length;
}

// Remove the minimum 7kyu
// Given an array of integers, remove the smallest value. Do not mutate the original array/list. 
// If there are multiple elements with the same value, remove the one with a lower index. 
// If you get an empty array/list, return an empty array/list.
// Don't change the order of the elements that are left.
function removeSmallest(numbers) {
  let min = Math.min(...numbers);
  let index = numbers.indexOf(min);
  return [...numbers.slice(0, index), ...numbers.slice(index + 1)];
}
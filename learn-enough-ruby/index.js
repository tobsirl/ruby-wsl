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
var isSquare = function(n) {
  return Math.sqrt(n) % 1 === 0;
}
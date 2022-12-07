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

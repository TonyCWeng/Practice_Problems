// Write a method to replace all spaces in a string with ‘%20’.

const replaceDelimiters = (str, original = " ", change = "%20") => {
  return str.split(original).join(change);
};

console.log(replaceDelimiters("a b c"));

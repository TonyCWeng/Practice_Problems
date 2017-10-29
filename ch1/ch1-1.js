/* Implement an algorithm to determine if a string has all unique characters.
   2) What if you can not use additional data structures?
*/

const allUnique = str => {
  const uniques = new Set();
  for (let i = 0; i < str.length; i++) {
    if (uniques.has(str[i])) return false;
    uniques.add(str[i]);
  }
  return true;
};

const allUniqueAlt = str => {
  for (let i = 0; i < str.length; i++) {
    for (let j = i+1; j < str.length; j++) {
      if (str[i] === str[j]) return false;
    }
  }
  return true;
};

console.log(allUniqueAlt("aple"));

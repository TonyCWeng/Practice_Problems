/* Design an algorithm and write code to remove the duplicate characters
  in a string without using any additional buffers NOTE: One or two
  additional variables are fine An extra copy of the array is not.
*/

const removeDuplicates = str => {
  const uniques = new Set();
  let newStr = "";
  for (let i = 0; i < str.length; i ++) {
    if (!uniques.has(str[i])) {
      uniques.add(str[i]);
      newStr += str[i];
    }
  }
  return newStr;
};

console.log(removeDuplicates("abca"));

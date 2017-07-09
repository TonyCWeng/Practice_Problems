 // Write a method to decide if two strings are anagrams or not.

const anagrams = (str1, str2) => {
  const sorted1 = str1.split("").sort().join("");
  const sorted2 = str2.split("").sort().join("");
  return sorted1 === sorted2;
};

console.log(anagrams("abc", "bca"));

// String comparisons. Cannot compare arrays in JS.
// Alternatively, join after the split and sort and compare the two.

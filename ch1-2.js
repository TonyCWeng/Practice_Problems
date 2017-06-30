/*
  Write code to reverse a C-Style String. (C-String means that “abcd”
  is represented as five characters, including the null character.)
*/

const strReverse = str => {
  let reversed = "";
  for (let i = str.length-1; i > -1; i--) {
    reversed += str[i];
  }
  return reversed;
};

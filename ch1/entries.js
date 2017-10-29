const a = [20,21,22, 40];
// const i = a.entries();

// for (let [idx, val] of a.entries()) {
//   if (idx % 3 === 0) continue;
//   console.log(idx);
// }

const h = {"a": 1, "b":2, "c": 14};
// console.log(Object.keys(h));
let sum = 0;
for (let key in h) {
  sum += h[key];
}
// console.log(sum);
// for (let key in h) { console.log(key, h[key]); };
const arr = [10,20,30];

sum = 0;
for (let i = 0; i <arr.length; i++) {
  sum += arr[i];
}

// const sum2 = arr.reduce( (x,y) => x + y, 0);
// console.log(sum2);

function isBig(x) {
  return x >= 10;
}

var ans = arr.some(isBig);
console.log(ans);

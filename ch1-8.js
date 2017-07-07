const isSub = (s1, s2) => {
  if (s1.length !== s2.length) return false;
  s1 = s1 + s1;
  return s1.includes(s2);
};

console.log(isSub("abc", "bca"));

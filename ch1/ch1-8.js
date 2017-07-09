const isSub = (s1, s2) => {
  if (s1.length !== s2.length) return false;
  s1 = s1 + s1;
  return s1.includes(s2);
};

console.log(isSub("abc", "bca"));

/*

I began my professional career in property management. But after a little over three years in the industry, I
wanted to do something else, something a little more stimulating.
I took a few Code Academy course and decided that
Coding was for me.

I fully committed to this descision at the start of the New Year, beginning with Ruby and Javascript.
I used this base of mine to create a Tumblr of my own.

Recently, I've been getting into React Native with a few other collaborators. We're developing an app
based around.

As it's a collaborative effort, I've also
dabbled into git for version control. It's been a very enlightening process.

I wish to work for Google because I know that the developers here share that same passion for learning.
Google is also well-known for its innovative culture and I would like nothing more than for this innovation to rub off on me
as I continue progressing as a software developer.

*/

let person = { name: 'Adam', gender: 'male' };
let secondReference = person;
console.log(person === secondReference);
secondReference.gender = 'female';
console.log(person.gender);
// Both secondReference and person have referential equality to one another,
// as they are both pointers pointing to the same person. As such, when
// we modified secondReference's gender, the changes were also reflected
// in person.

function setAge(random, chosenAge) {
  let agedPerson = Object.assign({}, random, {
    age: chosenAge
  });
  return agedPerson;
}

let aged = setAge(person, 25);
console.log(aged);
console.log(aged === person);
// false, as aged is essentially a new person with the same properties as
// as the original Adam, but also granted an age parameter.
// aged and person do not have referential equality to one another.

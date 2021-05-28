const companies= [
  {name: "Company One", category: "Finance", start: 1981, end: 2004},
  {name: "Company Two", category: "Retail", start: 1992, end: 2008},
  {name: "Company Three", category: "Auto", start: 1999, end: 2007},
  {name: "Company Four", category: "Retail", start: 1989, end: 2010},
  {name: "Company Five", category: "Technology", start: 2009, end: 2014},
  {name: "Company Six", category: "Finance", start: 1987, end: 2010},
  {name: "Company Seven", category: "Auto", start: 1986, end: 1996},
  {name: "Company Eight", category: "Technology", start: 2011, end: 2016},
  {name: "Company Nine", category: "Retail", start: 1981, end: 1989}
];

const ages = [33, 12, 20, 16, 5, 54, 21, 44, 61, 13, 15, 45, 25, 64, 32];

//old way of using filter before ES6 arrow functions
// const canDrink = ages.filter(function(age) {
// 	if (age >= 21) {
// 		return true;
// 	}
// });

// const canDrink = ages.filter(age => age >= 21);
// console.log(canDrink);

// old way to filter for all companies with a category of 'Retail'
// const retailCompanies = companies.filter(function(company) {
// 	if (company.category === 'Retail') {
// 		return true;
// 	}
// });

// fat arrow version
// const retailCompanies = companies.filter(
// 	company => company.category === "Retail");
// console.log(retailCompanies);

// filter for all companies that started in the 80s
// const eightiesCompanies = companies.filter(company => company.start > 1980 &&
// 	company.start < 1990);
// console.log(eightiesCompanies);

// get all the companies that lasted at least 10 years
const lastedTenYears = companies.filter(company => company.end - company.start
	>= 10);
console.log(lastedTenYears);

//map: used to format data from an array/iterable.
//map returns an array populated with the results of calling a function on
// every element in the array it is called on.

//filtering for company names without fat arrow function
// const companyNames = companies.map(function(company) {
// 	return company.name;
// });
// console.log(companyNames);

const testMap = companies.map(function(company) {
	return `${company.name} [${company.start} - ${company.end}]`;
});
console.log(testMap);
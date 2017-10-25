function sum(...args) {
    return args.reduce( (x,y) => {
        return x + y;
    }, 0);
}

const verifyEquals = (a, b) => {
    if (a === b) {
        console.log("Equals!! :)" );
    } else {
        console.log(`${a} !== ${b}`);
    }
}

function asyncSum(...args) {
    return new Promise( (resolve, reject) => {
        setTimeout( () => {
            if (args.length > 1e6) {
                return reject("Too many arguments");
            }
            resolve(sum(...args));
        }, 0);
    });
}
// fetch("https://www.google.com").then( (result) => console.log(result));

asyncSum(1,2,3).then( (resp) => verifyEquals(resp, 6));

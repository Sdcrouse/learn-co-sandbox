const person = {
  name: "Awesome Name",
  occupation: {
    title: "Senior Manager of Awesome",
    yearsHeld: 2
  },
  pets: [{
    kind: "dog",
    name: "Fiona"
  }, {
    kind: "cat",
    name: "Ralph"
  }]
}

function find(array, criteriaFn) {
  let current = array;
  let next = [];
    
  console.log(`current = ${current}, next = ${next}`);
    
  while(current) { // false when current == undefined or []
    if(criteriaFn(current)) {
      return current; //We found our needed element!
    }
    if(Array.isArray(current)){//if current is an array, this is true
      for(let i = 0; i < current.length; i++) {
        next.push(current[i]);
      } //Move the elements from current into next
    }
    else if(typeof(current) === 'object'){ // True, if current's an object
      var keyArray = Object.keys(current); // Get the keys from this object
      for (let n = 0; n < keyArray.length; n++){ /*keyArray has the keys, keyArray[n] is a key, and current[keyArray[n]] is the corresponding value in current. */
        next.push(current[keyArray[n]]); /* Push the values of this object onto next */
      }
      console.log(`current = ${current}, next = ${next}`);
    }
    current = next.shift();//Give current the first element of next
    console.log(`current = ${current}, next = ${next}`);
  }
    return null; //We didn't find the needed element.
}

var nutsoArray = [1,{first: 4, second: [2,3,{third:8}], final:{ish: 5}}]; 
find(nutsoArray, n=>(typeof n === 'number' && n > 7)); /* Calls console.log and returns 8, as it should */
find(nutsoArray, n=>(typeof n === 'number' && n > 10)); /* Calls console.log and returns null, as it should */

const collections = [1, [2, [4, [5, [6]], 3]]];
find(collections, n=>(typeof n === 'number' && n > 5));

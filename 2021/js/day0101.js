/**
 * Author: Loading BG#7962
 */
'use strict';

const nthEven = n => n * 2 - 2;

const validateEmail = email => /.+@.+\..+/.test(email);

function atbashLetter(l) {
    if (l.toLowerCase() === l.toUpperCase()) {
        return l;
    } else if (l === l.toLowerCase()) {
        return String.fromCharCode('z'.charCodeAt(0) - l.charCodeAt(0) + 'a'.charCodeAt(0));
    } else {
        return String.fromCharCode('Z'.charCodeAt(0) - l.charCodeAt(0) + 'A'.charCodeAt(0));
    }
}

const atbash = sentence => sentence.split("").map(atbashLetter).join("");

console.log(`nth_even #1: ${nthEven(1)}`);
console.log(`nth_even #2: ${nthEven(2)}`);
console.log(`nth_even #3: ${nthEven(100)}`);
console.log("-----------");
console.log(`validateEmail #1: ${validateEmail("@gmail.com")}`);
console.log(`validateEmail #2: ${validateEmail("hello.gmail@com")}`);
console.log(`validateEmail #3: ${validateEmail("gmail")}`);
console.log(`validateEmail #4: ${validateEmail("hello@gmail")}`);
console.log(`validateEmail #5: ${validateEmail("hello@edabit.com")}`);
console.log("-----------");
console.log(`atbash #1: ${atbash("apple")}`);
console.log(`atbash #2: ${atbash("Hello world!")}`);
console.log(`atbash #3: ${atbash("Christmas is the 25th of December")}`);

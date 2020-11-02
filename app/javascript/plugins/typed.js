import Typed from 'typed.js';

const typed = () => {
  new Typed('#typed-strings', { 
    strings: ['One cocktail is alright','two is too many', 'three is not enough'], 
  typeSpeed: 70, 
  loop:true
});
}

export { typed };
import Typed from 'typed.js';

const typed = () => {
  new Typed('#typed-strings', { 
    strings: ['One cocktail is alright','Two is too many', 'Three is not enough'], 
  typeSpeed: 120, 
  loop:true
});
}

export { typed };
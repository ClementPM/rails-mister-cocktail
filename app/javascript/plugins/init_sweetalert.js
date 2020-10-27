import swal from 'sweetalert';

const initSweetalert = ('sweet_alert', options = {}) => {
  const swalButton = document.getElementById('sweet_alert');
  if (swalButton) { 
    swalButton.addEventListener('click', () => {
      swal("Hello world!");
    });
  }
};

export { initSweetalert }; 


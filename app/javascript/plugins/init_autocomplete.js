import places from 'places.js';

const initAutocomplete = () => {
  const addressInput = document.getElementById('search');
  if (addressInput) {
    const reconfigurableOptions = {
      type: 'address', // Search only for cities names
    };
    places({ container: addressInput }).configure(reconfigurableOptions);
  }
};

export { initAutocomplete };

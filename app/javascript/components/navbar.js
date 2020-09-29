const initUpdateNavbarOnScroll = () => {
    const navbar = document.querySelector('nav');
    if (navbar) {
      window.addEventListener('scroll', () => {
        if (window.scrollY >= window.innerHeight) {
          navbar.classList.add('solid');
        } else {
          navbar.classList.remove('solid');
        }
      });
    }
  }
  
  export { initUpdateNavbarOnScroll };
const initUpdateNavbarOnScroll = () => {
  // const icon = document.querySelector('.mobile-menu');
  // const menu = document.querySelector('.menu');
  // const menuIcon = document.getElementById('menu-icon');
  // const exitIcon = document.getElementById('exit-icon');
  let prevScrollpos = window.pageYOffset;
  const header = document.querySelector('nav.homepage');
  // const back = document.getElementById('back-to-top');
  
  window.addEventListener('scroll', () => {
    const currentScrollPos = window.pageYOffset;

    header.classList.toggle('sticky', window.scrollY > 0 );
    //   if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
    //     back.style.display = "block";
    // } else {
    //     back.style.display = "none";
    //   }
    /* When the user scrolls down, hide the navbar. When the user scrolls up, show the navbar */
    if (prevScrollpos > currentScrollPos) {
      header.style.top = "0";
    } else {
      header.style.top = "-100px";
    }
    prevScrollpos = currentScrollPos;
  })

  // icon.addEventListener('click', () => {
  //   menu.classList.toggle('hide-menu');
  //   menuIcon.classList.toggle('hidden');
  //   exitIcon.classList.toggle('hidden');
  // })

  // menu.addEventListener('click', () => {
  //   menu.classList.toggle('hide-menu');
  //   menuIcon.classList.toggle('hidden');
  //   exitIcon.classList.toggle('hidden');
  // })
  
  // back.addEventListener('click', () => {
  //   document.body.scrollTop = 0; // For Safari
  //   document.documentElement.scrollTop = 0; // For Chrome, Firefox, IE and Opera
  // })
  //AOS.init();
}
  
export { initUpdateNavbarOnScroll };
const showForm = () => {
    const arrowDiv = document.querySelector('.add-new-dose');
    const arrows = document.querySelectorAll('.add-new-dose i');
    const doseForm = document.getElementById('new-dose-form');

    if (arrowDiv) {
      arrowDiv.addEventListener('click', () => {
        doseForm.classList.toggle('hidden');
        arrows.forEach(element => element.classList.toggle('hidden'));
      });
    }
  }
  
  export { showForm };
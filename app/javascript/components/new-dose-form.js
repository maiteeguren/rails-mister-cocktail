const showForm = () => {
    const arrowDiv = document.querySelector('.add-new-dose');
    const arrows = document.querySelectorAll('.add-new-dose i');
    const doseForm = document.getElementById('new-dose-form');

    const reviewDiv = document.querySelector('.add-new-review');
    const reviewIcons = document.querySelectorAll('.add-new-review i');
    const reviewForm = document.getElementById('new-review-form');
    
    if (arrowDiv) {
      arrowDiv.addEventListener('click', () => {
        doseForm.classList.toggle('hidden');
        arrows.forEach(element => element.classList.toggle('hidden'));
      });
    }

    if (reviewDiv) {
      reviewDiv.addEventListener('click', () => {
        reviewForm.classList.toggle('hidden');
        reviewIcons.forEach(element => element.classList.toggle('hidden'));
      });
    }
  }
  
  export { showForm };
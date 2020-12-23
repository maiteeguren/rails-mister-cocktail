const modalToggle = () => {
    const closeButton = document.querySelectorAll('.close-modal');

    const newCocktailBtn = document.querySelectorAll('.new-cocktail-btn');
    const newCocktailModal = document.getElementById('new-cocktail-modal');

    const newIngredientBtn = document.querySelector('.new-ingredient-btn');
    const newIngredientModal = document.getElementById('new-ingredient-modal');

    const newReviewBtn = document.querySelector('.new-review-btn');
    const newReviewModal = document.getElementById('new-review-modal')

    closeButton.forEach(button => {
        button.addEventListener('click', (event) => {
            event.preventDefault();
            button.parentElement.parentElement.style.display = "none";
        });
    });

    newCocktailBtn.forEach(button => {
        button.addEventListener('click', (event) => {
            event.preventDefault();
            newCocktailModal.style.display = "flex";
        });
    });

    newIngredientBtn.addEventListener('click', (event) => {
        event.preventDefault();
        newIngredientModal.style.display = "flex";
    });

    newReviewBtn.addEventListener('click', (event) => {
        event.preventDefault();
        newReviewModal.style.display = "flex";
    });
}
  
export { modalToggle };
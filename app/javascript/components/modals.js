const modalToggle = () => {
    const newCocktailBtn = document.querySelectorAll('.new-cocktail-btn');
    const newCocktailModal = document.getElementById('new-cocktail-modal');

    newCocktailBtn.forEach(button => {
        button.addEventListener('click', (event) => {
            event.preventDefault();
            newCocktailModal.style.display = "flex";
        });
    });
}
  
export { modalToggle };
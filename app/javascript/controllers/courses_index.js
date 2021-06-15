const categorySelectors = document.getElementById('category-selector');
const subcatgories = document.getElementById('subcategory-item');

categorySelectors.addEventListener('click', (event) => {
  console.log(event);
  console.log(event.currentTarget);
  // subcategories belonging to category.classList.remove('subcategory-hidden');
  // subcategories not belonging to category.classList.add('subcategory-hidden');
});

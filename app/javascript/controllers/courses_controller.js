const categorySelectors = document.querySelectorAll('.category-item');
const subcatgories = document.querySelectorAll('.subcategory-item');
const courseResults = document.querySelectorAll('.post');

categorySelectors.forEach(item => {
  item.addEventListener('click', (event) => {
    event.preventDefault();
    category_to_reveal = event.currentTarget.children[0].value.replace(/\W/g, '').toLowerCase();
    subcategory_items = `subcategory-item-${category_to_reveal}`;
    post_category = `post-category-${category_to_reveal}`;
    subcatgories.forEach(item => {
      if (item.classList.value.includes(category_to_reveal))
        item.classList.remove('category-hidden');
      else
        item.classList.add('category-hidden');
    })
    courseResults.forEach(item => {
      if (item.classList.value.includes(category_to_reveal))
        item.classList.remove('category-hidden');
      else
        item.classList.add('category-hidden');
    })
  })
});

subcatgories.forEach(item => {
  item.addEventListener('click', (event) => {
    subcat_to_hide = event.currentTarget.children[0].value.replace(/\W/g, '').toLowerCase();
    post_subcategory = `post-subcat-${subcat_to_hide}`;
    console.log(post_subcategory);
    courseResults.forEach(item => {
      if (!item.classList.value.includes('category-hidden'))
        console.log(item.classList.value);
        if (item.classList.value.includes(post_subcategory))
          item.classList.add('subcategory-hidden');
    })
  })
});

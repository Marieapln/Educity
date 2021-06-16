export const categorySelection = () => {
  const platformRadioButtons = document.querySelectorAll('.platform-item');
  const categoryRadioButtons = document.querySelectorAll('.category-item');
  const subcatCheckBoxes = document.querySelectorAll('.subcategory-item');
  const courseResults = document.querySelectorAll('.post');
  const resetButton = document.querySelector('.reset-filters');

  resetButton.addEventListener('click', event => {
    event.currentTarget.classList.add('reset-hidden');
    // platformRadioButtons.forEach(item => {
    //   item.children[0].checked = false;
    // })
    // categoryRadioButtons.forEach(item => {
    //   item.children[0].checked = false;
    //   item.classList.add('platform-hidden');
    // })
    subcatCheckBoxes.forEach(item => {
      item.children[0].checked = true;
      item.classList.remove('subcategory-hidden');
    })
    courseResults.forEach(item => {
      item.classList.remove('subcategory-hidden');
    })
  })


  platformRadioButtons.forEach(item => {
    item.addEventListener('change', (event) => {
      const platformToReveal = event.currentTarget.children[0].value.replace(/\W/g, '').toLowerCase();
      // resetButton.classList.remove('reset-hidden');
      courseResults.forEach(item => {
        if (item.classList.value.includes(`post-platform-${platformToReveal}`)) {
          item.classList.remove('platform-hidden');
        } else {
          item.classList.add('platform-hidden');
        }
        item.classList.remove('category-hidden');
        item.classList.remove('subcategory-hidden');
      })
      categoryRadioButtons.forEach(item => {
        item.children[0].checked = false;
        if (item.classList.value.includes(`category-item-${platformToReveal}`)) {
          item.classList.remove('platform-hidden');
        } else {
          item.classList.add('platform-hidden');
        }
      })
      subcatCheckBoxes.forEach(item => {
        item.children[0].checked = true;
        item.classList.add('category-hidden');
        item.classList.remove('subcategory-hidden');
      })
    })
  });

  categoryRadioButtons.forEach(item => {
    item.addEventListener('change', (event) => {
      const categoryToReveal = event.currentTarget.children[0].value.replace(/\W/g, '').toLowerCase();
      // resetButton.classList.remove('reset-hidden');
      courseResults.forEach(item => {
        if (item.classList.value.includes(categoryToReveal)) {
          item.classList.remove('category-hidden');
        } else {
          item.classList.add('category-hidden');
        }
        item.classList.remove('subcategory-hidden');
      })
      subcatCheckBoxes.forEach(item => {
        if (item.classList.value.includes(categoryToReveal)) {
          item.classList.remove('category-hidden');
        } else {
          item.classList.add('category-hidden');
        }
        item.children[0].checked = true;
        item.classList.remove('subcategory-hidden');
      })
    })
  });

  subcatCheckBoxes.forEach(item => {
    item.addEventListener('change', (event) => {
      const subcatsToProcess = event.currentTarget.children[0].value.replace(/\W/g, '').toLowerCase();
      const coursesToProcess = document.querySelectorAll(`.post-subcat-${subcatsToProcess}`);
      resetButton.classList.remove('reset-hidden');
      coursesToProcess.forEach(item => {
        item.classList.add('subcategory-hidden');
        event.currentTarget.classList.add('subcategory-hidden');
      });
    });
  });
}

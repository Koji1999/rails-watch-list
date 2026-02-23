const flipcards = document.querySelectorAll(".flipcard")

flipcards.forEach(element => {
  element.addEventListener("click", () => {
    element.classList.toggle("clicked");
  })
});

const search = document.querySelector("#search_query")

search.addEventListener("key_up", () => {
  search.value = params["search"]
})

import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="flip"
export default class extends Controller {
  over(event) {
    event.currentTarget.classList.toggle("clicked");
  }
}

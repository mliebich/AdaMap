import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static values = {
    delay: Number,
    class: String,
  }

  connect(event) {
    setTimeout(() => {
      this.element.classList.add(...this.classValue.split(" "))
    }, this.delayValue || 2000)
  }
}
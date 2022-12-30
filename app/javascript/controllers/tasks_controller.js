import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
    markasdone(event) {
        event.preventDefault()
        console.log(this.idValue)
    }
}
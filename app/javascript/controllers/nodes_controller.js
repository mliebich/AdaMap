import { Controller } from "@hotwired/stimulus"
import  LeaderLine  from "leader-line-new"

console.log('nodes_controller');

export default class extends Controller {
  static targets = ["start", "end"]
  static values = { id: Number}

  initialize() {
      console.log(this.idValue)
      console.log(this.startTarget)
      console.log(this.element.innerHTML)
    }

  connect(params) {
    console.log(document.getElementById(2))
    new LeaderLine(document.getElementById(2), this.endTarget,
    {
      color: 'green',
      size: 3,
      dash: { animation: true },
      startSocket: 'left', endSocket: 'left'
    })
  }
}

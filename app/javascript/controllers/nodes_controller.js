import { Controller } from "@hotwired/stimulus"
import  LeaderLine  from "leader-line-new"

console.log('nodes_controller');

export default class extends Controller {
  static targets = ["start", "end"]
  static values = { id: Number }

  initialize() {
      console.log(this.idValue)
      console.log(this.startTarget)
      console.log(this.element.innerHTML)
    }

  connect(params) {
    console.log(document.getElementById(this.idValue))
    var start = document.getElementById(this.idValue)
    var end = this.endTarget
    new LeaderLine(start, end,
    {
      color: 'green',
      size: 3,
      dash: { animation: false },
      startSocket: 'left', endSocket: 'left'
    })
  }
}

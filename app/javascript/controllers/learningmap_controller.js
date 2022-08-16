import { Controller } from "@hotwired/stimulus"
import  LeaderLine  from "leader-line-new"

export default class extends Controller {
  static targets = ["start", "end"]
  static values = { id: Number, pre: Number }

  initialize() {
      console.log(this.idValue)
      console.log(this.preValue)
      //console.log(this.element.innerHTML)
    }

  connect(params) {
    console.log(this.idValue)
    var start = document.getElementById(this.idValue)
    var end = document.getElementById(this.preValue)
    new LeaderLine(start, LeaderLine.pointAnchor(end, {x:50,y:50}),
    {
      size: 3,
      dash: { animation: true },
      line: { outline: true, startSocketGravity: 500},
      endPlug: 'hand'
    })
  }
}

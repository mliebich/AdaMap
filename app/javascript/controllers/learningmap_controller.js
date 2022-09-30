import { Controller } from "@hotwired/stimulus"
import  LeaderLine  from "leader-line-new"
import  PlainDraggable from "plain-draggable"

export default class extends Controller {
  static targets = ["start", "end"]
  static values = { id: Number, pre: Number }

  initialize() {
      console.log(this.idValue)
      console.log(this.preValue)
      //console.log(this.element.innerHTML)
      this.index = 0
    }

  connect(params) {
    var start = document.getElementById(this.idValue)
    var end = document.getElementById(this.preValue)
    function fixLine() {
      line.position();
    }
    new PlainDraggable(start, {onMove: fixLine});
    var line = new LeaderLine(end, start,
    {
      size: 3,
      dash: { animation: true },
      line: { path: 'fluid'},
      startSocket: 'top',
      startPlug: 'square',
      startPlugSize: 1.5,
      startPlugColor: 'green',
      endPlug: 'disc',
      endPlugColor: 'blue',
      endPlugSize: 2.5,
    })
  }
}

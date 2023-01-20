import { Controller } from "@hotwired/stimulus"
import  LeaderLine  from "leader-line-new"
import  PlainDraggable from "plain-draggable"


export default class extends Controller {
  static targets = ["start", "end"]
  static values = { id: Number, pre: Number }

  initialize() {
      console.log(this.idValue)
      console.log(this.preValue)
    }
  connect(params) {
    var start = document.getElementById(this.idValue)
    var end = document.getElementById(this.preValue)

    var line = new LeaderLine(end, start,
    {
      size: 3,
      dash: { animation: true },
      line: { path: 'fluid'},
      startSocket: 'bottom',
      startPlug: 'disc',
      startPlugSize: 3.5,
      startPlugColor: '#0d9488',
      endPlug: 'arrow2',
      endPlugColor: '#f23029',
      endPlugSize: 1.25,
      gradient: true,
    });
    new PlainDraggable(start, {onMove: function(){line.position();}});
    new PlainDraggable(end, {onMove: function(){line.position();}});
  }
}

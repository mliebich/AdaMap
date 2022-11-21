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
      startSocket: 'top',
      startPlug: 'disc',
      startPlugSize: 3.5,
      startPlugColor: '#0d9488',
      endPlug: 'hand',
      endPlugColor: '#0ea5e9',
      endPlugSize: 1.25,
      gradient: true
    });
    new PlainDraggable(start, {onMove: line.position()});
    new PlainDraggable(end, {onMove: line.position()});
  }
  move(){
    window.dispatchEvent(new Event('resize'));
  };
}

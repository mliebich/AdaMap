import { Controller } from "@hotwired/stimulus"
import  LeaderLine  from "leader-line-new"

console.log('nodes_controller');

export default class extends Controller {
  static targets = [ "stat", "end"]

  connect() {
    console.log(this.startTarget)
    new LeaderLine(this.startTarget, this.endTarget,
    {
      color: 'green',
      size: 3,
      dash: { animation: true },
      startSocket: 'left', endSocket: 'left'
    })
  }
}

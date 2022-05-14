import { Controller } from "@hotwired/stimulus"
import LeaderLine from "leader-line-new"

console.log('nodes_controller');

export default class extends Controller {

  initalize(){
    let start = this.document.getElementById('start')
    let end = this.document.getElementById('end')
  }
  connect() {
    console.log("please")
    this.line = new LeaderLine(this.element, start,end)
  }

}

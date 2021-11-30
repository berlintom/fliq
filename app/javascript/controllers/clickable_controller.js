import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["chat", "button"]

  show() {
    this.chatTarget.classList.toggle("d-none");
  }
}

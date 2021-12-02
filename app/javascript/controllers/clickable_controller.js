import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["chat", "button", "messages", "svg"]
  static values = { open: Boolean }
  connect() {
    if (this.openValue) {
      this.show()
    }
  }

  show() {
    this.chatTarget.classList.toggle("d-none");
    this.messagesTarget.scrollTop = this.messagesTarget.scrollHeight;
  }

  rotateBat() {
    this.svgTarget.classList.toggle('rotate-in');
    this.svgTarget.classList.toggle('rotate-out');
    console.log(this.svgTarget)
  }
}

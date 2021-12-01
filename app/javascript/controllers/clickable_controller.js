import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["chat", "button", "messages"]
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
}

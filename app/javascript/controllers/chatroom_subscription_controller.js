import { Controller } from "stimulus";


export default class extends Controller {
  static values = { chatroomId: Number }

  connect() {
    console.log(`Subscribe to the chatroom with the id ${this.chatroomIdValue}.`);
  }
}

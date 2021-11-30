import { Controller } from "stimulus";
import consumer from "../channels/consumer";

export default class extends Controller {
  static values = { matchId: Number }

  connect() {
    this.channel = consumer.subscriptions.create(
      { channel: "ChatroomChannel", id: this.matchIdValue },
      { received: data => this.element.insertAdjacentHTML("beforeend", data) }
      )
    console.log(`Subscribed to the chatroom with the id ${this.matchIdValue}.`);
  }

  disconnect() {
    console.log("Unsubscribed from the chatroom")
    this.channel.unsubscribe()
  }
}

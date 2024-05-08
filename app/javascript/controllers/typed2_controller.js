import { Controller } from "@hotwired/stimulus";
import Typed from "typed.js";

// Connects to data-controller="typed"
export default class extends Controller {
  static targets = ["drMessage", "drDisplay"];

  connect() {
    console.log("typed2 controller connected");

    const drMessage = this.drMessageTarget.innerText.split();

    new Typed(this.drDisplayTarget, {
      strings: drMessage,
      typeSpeed: 120,
    });
  }
}

import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="toggle"
export default class extends Controller {
  static targets = ["appForm"];

  connect() {
    console.log("toggle controller connected");
  }

  fire() {
    this.appFormTarget.classList.toggle("form-open");
  }
}
//update

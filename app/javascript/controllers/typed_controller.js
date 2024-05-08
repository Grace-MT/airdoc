import { Controller } from "@hotwired/stimulus";
import Typed from "typed.js";

// Connects to data-controller="typed"
export default class extends Controller {
  static values = {
    strings: Array,
  };
  static targets = ["lorem"];

  connect() {
    console.log("typed controller connected");
    const text =
      "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Similique numquam eius laboriosam provident, dolorum illum, ipsa commodi, porro atque dolore quam obcaecati quia corrupti ducimus facilis culpa aspernatur! Sapiente, iusto!".split();

    // console.log(this.stringsValue);

    new Typed(this.loremTarget, {
      strings: text,
      typeSpeed: 50,
    });
  }
}

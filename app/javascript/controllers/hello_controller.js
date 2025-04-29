import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  // connect() {
  //   this.element.textContent = "Hello World!"
  // }

  static targets = ["name", "number"]

  greet(event){
    if(parseInt(this.numberTarget.value) > 100){
      event.preventDefault();
      return;
    }
    window.location.replace("/");
  }
}

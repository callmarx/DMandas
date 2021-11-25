import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="notification"
export default class extends Controller {
  connect() {
    setTimeout(() => {
      this.element.classList.remove('-translate-y-10', 'opacity-0');
      this.element.classList.add('translate-y-4', 'opacity-100');
    }, 10);

    setTimeout(() => {
      this.close()
    }, 4000)
  }

  close() {
    this.element.classList.remove('opacity-100');
    this.element.classList.add('opacity-0');

    setTimeout(() => {
      this.element.remove();
    }, 600);
  }
}

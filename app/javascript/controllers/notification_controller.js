import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="notification"
export default class extends Controller {
  connect() {
    setTimeout(() => {
      this.element.classList.remove('hidden');
      this.element.classList.add(
        'transition', 'duration-500', 'ease-in-out', 'transform', '-translate-y-10', 'opacity-0'
      );

      setTimeout(() => {
        this.element.classList.remove('-translate-y-10', 'opacity-0');
        this.element.classList.add('translate-y-4', 'opacity-100');
      }, 500);
    }, 100);
  }

  close() {
    this.element.classList.remove('opacity-100');
    this.element.classList.add('opacity-0');

    setTimeout(() => {
      this.element.remove();
    }, 600);
  }
}

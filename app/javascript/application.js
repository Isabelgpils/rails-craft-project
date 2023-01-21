// Entry point for the build script in your package.json
<<<<<<< Updated upstream
import "@hotwired/turbo-rails"
import "./controllers"
import * as bootstrap from "bootstrap"
import "trix"
import "@rails/actiontext"

document.addEventListener("turbo:load", () => {
  var tooltipTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="tooltip"]'))
  var tooltipList = tooltipTriggerList.map(function (tooltipTriggerEl) {
    return new bootstrap.Tooltip(tooltipTriggerEl)
  })
})
=======
import * as bootstrap from "bootstrap"
// import "@hotwired/turbo-rails"
import "./builds/application.css"
import "./controllers"
import "trix"
import "@rails/actiontext"
import * as bootstrap from "bootstrap"
>>>>>>> Stashed changes

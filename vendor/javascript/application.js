// application.js
// Served via Rack Application

console.log("application.js loaded successfully");

document.addEventListener("DOMContentLoaded", function () {
  console.log("DOM fully loaded");

  window.MyApp = {
    version: "1.0.0",

    greet: function (name) {
      alert("Hello " + name + ", welcome to MyApp!");
    },

    init: function () {
      console.log("MyApp initialized");
    }
  };

  MyApp.init();
});

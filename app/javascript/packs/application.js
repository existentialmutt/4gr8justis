// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import { Turbo, cable } from "@hotwired/turbo-rails"
require("@rails/activestorage").start()
require("channels")


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//

const images = require.context('../images', true)
const imagePath = (name) => images(name, true)

// import '../stylesheets/application.scss'
// import { defineCustomElements, setAssetPath } from '@shoelace-style/shoelace'
// 
// setAssetPath(document.currentScript.src)
// 
// // This will import all shoelace web components for convenience.
// // Check out the webpack documentation below on selective imports.
// // https://shoelace.style/getting-started/installation?id=using-webpack
// defineCustomElements()

import "controllers"
require("css/application.scss")

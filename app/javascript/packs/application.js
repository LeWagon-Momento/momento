/* eslint no-console:0 */
// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
//
// To reference this file, add <%= javascript_pack_tag 'application' %> to the appropriate
// layout file, like app/views/layouts/application.html.erb


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)
// This is for the popup alert

import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!
import { initMapbox } from '../plugins/init_mapbox';
import { initPostShowMapbox } from '../plugins/init_mapbox_postshow'; // Kenn's mapbox
import { initTimeline } from '../plugins/init_timeline';
import { initSlider } from '../plugins/init_slider';
import { textCheck } from '../plugins/wiki_api';
import { readURL } from '../plugins/display_image';
import { initPostMapbox } from '../plugins/post_mapbox';
import { initReviewMapbox } from '../plugins/review_mapbox';
import '../plugins/draggable.js'
import { wikiApi } from '../plugins/wiki_api';
import { toggleNav } from '../plugins/side_bar';
import { closeNav } from '../plugins/side_bar';
import { loginModal } from '../plugins/init_login_modal';
import { initPopUpBox } from '../plugins/init_popup';

toggleNav();
closeNav();
initMapbox();
initPostShowMapbox();
initTimeline();
initSlider();
textCheck();
readURL();
initPostMapbox();
wikiApi();
initReviewMapbox();
loginModal();
initPopUpBox();

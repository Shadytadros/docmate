import "bootstrap";
import { modalLogic } from "../components/modal"
import { commentLogic } from "../components/comments"
import $ from 'jquery';

import { Application } from "stimulus"
import { definitionsFromContext } from "stimulus/webpack-helpers"

const application = Application.start()
const context = require.context("../controllers", true, /\.js$/)
application.load(definitionsFromContext(context))

global.$ = jQuery;


modalLogic();
// commentLogic();

console.log("hello")

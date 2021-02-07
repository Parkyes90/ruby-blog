// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs";
import Turbolinks from "turbolinks";
import * as ActiveStorage from "@rails/activestorage";
import "channels";

Rails.start();
Turbolinks.start();
ActiveStorage.start();
console.log("test");
$(document).on("turbolinks:load", function () {
  console.log("load");
  const showError = function (message) {
    if ($("#flash-messages").size() < 1) {
      $("div.container.main div:first").prepend(
        "<div id='flash-messages'></div>"
      );
    }
    $("#flash-messages").html(
      '<div class="alert alert-warning"><a class="close" data-dismiss="alert">×</a><div id="flash_alert">' +
        message +
        "</div></div>"
    );
    $(".alert").delay(5000).fadeOut(3000);
    return false;
  };

  const stripeResponseHandler = function (status, response) {
    let token, $form;

    $form = $(".cc_form");

    if (response.error) {
      console.log(response.error.message);
      showError(response.error.message);
      $form.find("input[type=submit]").prop("disabled", false);
    } else {
      token = response.id;
      $form.append(
        $('<input type="hidden" name="payment[token]" />').val(token)
      );
      $("[data-stripe=number]").remove();
      $("[data-stripe=cvc]").remove();
      $("[data-stripe=exp-year]").remove();
      $("[data-stripe=exp-month]").remove();
      $("[data-stripe=label]").remove();
      $form.get(0).submit();
    }

    return false;
  };

  const submitHandler = function (event) {
    const $form = $(event.target);
    $form.find("input[type=submit]").prop("disabled", true);
    console.log(Stripe);

    if (Stripe) {
      Stripe.card.createToken($form, stripeResponseHandler);
    } else {
      showError(
        "Failed to load credit card processing functionality. Please reload this page in your browser."
      );
    }
  };

  $(".cc_form").on("submit", submitHandler);
});

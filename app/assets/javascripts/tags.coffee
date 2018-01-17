$(document).ready ->
  $("#new_tag").on("ajax:success", () ->
      $("#new_tag")[0].reset()
      $("<p style='color: green; font-size: 12px;'>Tag created successfully</p>").insertAfter('#new_tag')[0]
    ).on "ajax:error", (response) ->
      console.log response
      $("#new_tag").append "<p style='color: red; font-size: 12px;'>Couldn't Save Tag</p>"

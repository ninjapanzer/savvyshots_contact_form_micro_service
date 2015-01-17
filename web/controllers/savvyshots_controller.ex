defmodule ContactFormMicroService.SavvyshotsController do
  use Phoenix.Controller

  plug :action

  def contact(conn, _params) do
    email = Mailer.compose("from@example.com", tp@example.com, "Subject", "welcome_template", template_data)
    response = Mailer.send(email)
    render conn, "contact.html"
  end
end

defmodule ContactFormMicroService.Endpoint do
  use Phoenix.Endpoint, otp_app: :contact_form_micro_service

  plug Plug.Static,
    at: "/", from: :contact_form_micro_service

  plug Plug.Logger

  # Code reloading will only work if the :code_reloader key of
  # the :phoenix application is set to true in your config file.
  plug Phoenix.CodeReloader

  plug Plug.Parsers,
    parsers: [:urlencoded, :multipart, :json],
    pass: ["*/*"],
    json_decoder: Poison

  plug Plug.MethodOverride
  plug Plug.Head

  plug Plug.Session,
    store: :cookie,
    key: "_contact_form_micro_service_key",
    signing_salt: "vgDI4mTT",
    encryption_salt: "an1OpAYk"

  plug :router, ContactFormMicroService.Router
end

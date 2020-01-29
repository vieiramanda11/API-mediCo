if Rails.env.production?
  Rails.application.config.session_store :cookie_store, key: "_medico_app", domain: "api-medico.herokuapp.com"
else
  Rails.application.config.session_store :cookie_store, key: "_medico_app"
end
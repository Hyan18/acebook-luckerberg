if Rails.env == "production"
  Rails.application.config.session_store :cookie_store, key: "_acebook_app", domain: "acebook.herouapp.com"
else
  Rails.application.config.session_store :cookie_store, key: "_acebook.app"
end
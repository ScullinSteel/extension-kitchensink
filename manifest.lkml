project_name: "marketplace_scullinsteel_kitchensink"

constant: CONNECTION_NAME {
  value: "connection"
  export: override_required
}

application: kitchensink {
  label: "Kitchen Sink"
  url: "http://localhost:8080/bundle.js"
  entitlements: {
    local_storage: yes
    navigation: yes
    new_window: yes
    core_api_methods: ["all_connections", "search_folders"]
    global_user_attributes: [
      "locale"
    ]
    scoped_user_attributes: [
      "foo",
      "bar",
      "secret"
    ]
  }
}

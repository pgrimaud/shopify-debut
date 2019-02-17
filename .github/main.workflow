workflow "New workflow" {
  on = "push"
  resolves = ["Shopify"]
}

action "Shopify" {
  uses = "pgrimaud/actions/shopify@master"
  secrets = [
    "SHOPIFY_PASSWORD",
    "SHOPIFY_STORE_URL",
    "SHOPIFY_THEME_ID",
    "THEME_PATH"
  ]
}

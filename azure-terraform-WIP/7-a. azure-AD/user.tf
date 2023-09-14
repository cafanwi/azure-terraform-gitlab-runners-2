resource "azuread_user" "example_user" {
  user_principal_name = "user@example.com"
  display_name       = "John Doe"
  password           = "your-password"
}

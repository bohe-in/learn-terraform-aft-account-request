
module "moises-mainserv1_bohemiancc_bp" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "moises+mainserv1@bohemian.cc"
    AccountName               = "moises-mainserv1_bohemiancc"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "moises+mainserv1@bohemian.cc"
    SSOUserFirstName          = "test"
    SSOUserLastName           = "hello"
  }

  account_tags = {
    "BP departure control" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "BP departure control"
    change_reason       = "Account created on BP departure control"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "bohecustom"
}

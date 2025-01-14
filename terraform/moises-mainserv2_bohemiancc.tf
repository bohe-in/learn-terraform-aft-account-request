
module "moises-mainserv2_bohemiancc_bp" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "moises+mainserv2@bohemian.cc"
    AccountName               = "moises-mainserv2_bohemiancc"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "moises+mainserv2@bohemian.cc"
    SSOUserFirstName          = "moif"
    SSOUserLastName           = "moisl"
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

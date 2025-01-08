module "custom3" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "moises+aftcustom3@bohemian.cc"
    AccountName               = "moisesaftcustom3"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "moises+aftcustom3@bohemian.cc"
    SSOUserFirstName          = "Sandbox"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "bohecustom"
}
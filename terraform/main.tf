module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "moises+aftsandbox@bohemian.cc"
    AccountName               = "sandbox-aft"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "moises+aftsandbox@bohemian.cc"
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

  account_customizations_name = "sandbox"
}

module "duyen-backend" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "ift+newcobackend@bohemian.cc"
    AccountName               = "ift-newcobackend"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "ift+newcobackend@bohemian.cc"
    SSOUserFirstName          = "Duyen"
    SSOUserLastName           = "Backend"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "new account"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}

module "duyen-frontend" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "ift+newcofrontend@bohemian.cc"
    AccountName               = "ift-newcofrontend"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "ift+newcofrontend@bohemian.cc"
    SSOUserFirstName          = "Duyen"
    SSOUserLastName           = "Frontend"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "new account"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}
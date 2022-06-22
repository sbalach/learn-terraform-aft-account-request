module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "sree.vnb.az1041406@outlook.com"
    AccountName               = "workload_1"
    ManagedOrganizationalUnit = "Workloads"
    SSOUserEmail              = "sreez.vnb@outlook.com"
    SSOUserFirstName          = "Sreez"
    SSOUserLastName           = "VNB"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
	"Environment" = "POC"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "poc"
  }

  account_customizations_name = "sandbox"
}

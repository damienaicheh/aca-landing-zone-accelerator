locals {
  # Resources templates name

  tplgen_res_application_gateway        = "agw-%s"
  tplgen_res_application_insights       = "appi-%s"
  tplgen_res_app_service                = "app-%s"
  tplgen_res_bastion                    = "bas-%s"
  tplgen_res_container_apps_environment = "cae-%s"
  tplgen_res_container_registry         = "cr-%s"
  tplgen_res_cosmos_db_no_sql           = "cosmos-%s"
  tplgen_res_front_door                 = "afd-%s"
  tplgen_res_front_door_endpoint        = "fde-%s"
  tplgen_res_front_door_waf             = "fdfp-%s"
  tplgen_res_key_vault                  = "kv-%s"
  tplgen_res_log_analytics_workspace    = "log-%s"
  tplgen_res_managed_identity           = "id-%s"
  tplgen_res_network_interface          = "nic-%s"
  tplgen_res_network_security_group     = "nsg-%s"
  tplgen_res_private_endpoint           = "pep-%s"
  tplgen_res_private_link_service       = "pls-%s"
  tplgen_res_public_ip_address          = "pip-%s"
  tplgen_res_resource_group             = "rg-%s"
  tplgen_res_service_bus                = "sb-%s"
  tplgen_res_service_bus_queue          = "sbq-%s"
  tplgen_res_service_bus_topic          = "sbt-%s"
  tplgen_res_storage_account            = "st-%s"
  tplgen_res_virtual_machine            = "vm-%s"
  tplgen_res_virtual_network            = "vnet-%s"

  # Region abbreviations

  tplgen_region_australiacentral   = "auc"
  tplgen_region_australiacentral2  = "auc2"
  tplgen_region_australiaeast      = "aue"
  tplgen_region_australiasoutheast = "ause"
  tplgen_region_brazilsouth        = "brs"
  tplgen_region_brazilsoutheast    = "brse"
  tplgen_region_canadacentral      = "canc"
  tplgen_region_canadaeast         = "cane"
  tplgen_region_centralindia       = "cin"
  tplgen_region_centralus          = "cus"
  tplgen_region_centraluseuap      = "cuseuap"
  tplgen_region_eastasia           = "ea"
  tplgen_region_eastus             = "eus"
  tplgen_region_eastus2            = "eus2"
  tplgen_region_eastus2euap        = "eus2euap"
  tplgen_region_francecentral      = "frc"
  tplgen_region_francesouth        = "frs"
  tplgen_region_germanynorth       = "gern"
  tplgen_region_germanywestcentral = "gerwc"
  tplgen_region_japaneast          = "jae"
  tplgen_region_japanwest          = "jaw"
  tplgen_region_jioindiacentral    = "jioinc"
  tplgen_region_jioindiawest       = "jioinw"
  tplgen_region_koreacentral       = "koc"
  tplgen_region_koreasouth         = "kors"
  tplgen_region_northcentralus     = "ncus"
  tplgen_region_northeurope        = "neu"
  tplgen_region_norwayeast         = "nore"
  tplgen_region_norwaywest         = "norw"
  tplgen_region_southafricanorth   = "san"
  tplgen_region_southafricawest    = "saw"
  tplgen_region_southcentralus     = "scus"
  tplgen_region_southeastasia      = "sea"
  tplgen_region_southindia         = "sin"
  tplgen_region_swedencentral      = "swc"
  tplgen_region_switzerlandnorth   = "swn"
  tplgen_region_switzerlandwest    = "sww"
  tplgen_region_uaecentral         = "uaec"
  tplgen_region_uaenorth           = "uaen"
  tplgen_region_uksouth            = "uks"
  tplgen_region_ukwest             = "ukw"
  tplgen_region_westcentralus      = "wcus"
  tplgen_region_westeurope         = "weu"
  tplgen_region_westindia          = "win"
  tplgen_region_westus             = "wus"
  tplgen_region_westus2            = "wus2"
  tplgen_region_westus3            = "wus3"
}

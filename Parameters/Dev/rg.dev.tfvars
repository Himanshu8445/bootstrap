#RG for Dev#
resource_groups = {
  admin_rg_central = {
    name     = "rg-fxf-dna-cus-dev-001"
    location = "centralus"
    tags = {
      eai             = "3536348"
      environment     = "non-prod"
      shared_use      = "TRUE"
      shared_resource = "TRUE"
    }
  }
}
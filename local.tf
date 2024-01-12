# To add tag and owner to resources

locals {
  common_tags = {
    environment = "production"
    Owner       = "IL4 team"
    Service     = "backend"
  }
}
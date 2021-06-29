output "base_domain_nameservers" {  
  value = "${module.dnsModulo.domain_name_servers}"
}
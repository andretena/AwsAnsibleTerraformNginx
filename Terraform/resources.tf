module "networkModulo" {
    source			= "./modulos/network"
 	access_key		= "${var.access_key}"
	secret_key		= "${var.secret_key}"
	region			= "${var.region}"
	environment_tag = "${var.environment_tag}"
}

module "securityGroupModulo" {
    source			= "./modulos/securityGroup"
 	access_key		= "${var.access_key}"
	secret_key		= "${var.secret_key}"
	region			= "${var.region}"
	vpc_id			= "${module.networkModulo.vpc_id}"
	environment_tag = "${var.environment_tag}"
}

module "instanciaModulo" {
	source 				= "./modulos/instancia"
	access_key 			= "${var.access_key}"
 	secret_key 			= "${var.secret_key}"
 	region     			= "${var.region}"
 	vpc_id 				= "${module.networkModulo.vpc_id}"
	subnet_public_id	="${module.networkModulo.public_subnets[0]}"
	key_pair_name		="${module.networkModulo.ec2keyName}"
	security_group_ids 	= ["${module.securityGroupModulo.andrelab_22}", "${module.securityGroupModulo.andrelab_80}"]
	environment_tag 	= "${var.devtag}"
}

module "moduloDns" {
	source 		= "./modulos/dns"
 	access_key 	= "${var.access_key}"
	secret_key 	= "${var.secret_key}"
	region     	= "${var.region}"
	domain_name	= "andretena.com.br" #DOMINIO FICTICIO
	aRecords	= [
		"andretena.com ${module.instanceModule.instance_eip}",
	]
	cnameRecords	= [
		"www.andretena.com.br andretena.com.br"
	]
}
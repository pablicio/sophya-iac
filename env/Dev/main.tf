module "aws-dev" {
  source = "../../infra"
  instancia = "t2.micro"
  regiao_aws = "us-west-2"
  chave = "IaC-DEV"
  grupoDeSeguranca = "DEV"
  bucket_name = "tf-storage"
}

output "IP" {
  value = module.aws-dev.IP_publico
}

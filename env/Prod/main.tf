module "aws-prod" {
  source = "../../infra"
  instancia = "t2.micro"
  regiao_aws = "us-west-2"
  chave = "IaC-Prod"
  grupo_de_seguranca = "acesso_geral_prod_new"
}

output "IP" {
  value = module.aws-prod.IP_publico
}
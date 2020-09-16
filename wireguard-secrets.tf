data "aws_secretsmanager_secret" "wg_server_private_key" {
  name = var.wg_server_private_key_param
}

data "aws_secretsmanager_secret_version" "wg_server_private_key" {
  secret_id = data.aws_secretsmanager_secret.wg_server_private_key.id
}

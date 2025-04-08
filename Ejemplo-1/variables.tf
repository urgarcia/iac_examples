locals {
  public_keys = fileset("${path.module}/public_keys", "*.pub")
  # Si no hay llaves, retorna una lista vacía
  has_public_keys = length(local.public_keys) > 0
}
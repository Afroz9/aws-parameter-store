resource "aws_ssm_parameter" "params" {
  count = length(var.params)
  name  = var.params[count.index].name
  type  = var.params[count.index].type
  value = var.params[count.index].type
}

variable "params" {
  default = [
    { name = "roboshop.dev.frontend.catalogue_url",value = "http://catalogue.dev.afroz1.online:8080", type = "String" },
    { name = "roboshop.dev.frontend.user_url",value = "http://user.dev.afroz1.online:8080", type = "String" },
    { name = "roboshop.dev.frontend.cart_url",value = "http://cart.dev.afroz1.online:8080", type = "String" },
    { name = "roboshop.dev.frontend.payment_url",value = "http://payment.dev.afroz1.online:8080", type = "String" },
    { name = "roboshop.dev.frontend.shipping_url",value = "http://shipping.dev.afroz1.online:8080", type = "String" },
    { name = "roboshop.dev.cart.redis_host",value = "redis-dev.afroz1.online", type = "String" },
    { name = "roboshop.dev.cart.catalogue_host",value = "catalogue.dev.afroz1.online:8080", type = "String" },
    { name = "roboshop.dev.cart.catalogue_port",value = "8080", type = "String" },
    { name = "roboshop.dev.catalogue.mongo",value = "true", type = "String" },
    { name = "roboshop.dev.catalogue.mongo_url",value = "mongodb://mongodb-dev.afroz1.online:27017/catalogue", type = "String" },
    { name = "roboshop.dev.payment.cart_host",value = "cart-dev.afroz1.online", type = "String" },
    { name = "roboshop.dev.payment.cart_port",value = "8080", type = "String" },
    { name = "roboshop.dev.payment.user_host",value = "user-dev.afroz1.online", type = "String" },
    { name = "roboshop.dev.payment.user_port",value = "8080", type = "String" },
    { name = "roboshop.dev.payment.amqp_host",value = "rabbitmq-dev.afroz1.store", type = "String" },
    { name = "roboshop.dev.payment.amqp_user",value = "roboshop", type = "String" },
    { name = "roboshop.dev.shipping.cart_endpoint",value = "roboshop", type = "String" },
    { name = "roboshop.dev.shipping.db_host",value = "cart-dev.afroz1.online:8080", type = "String" },
    "roboshop.dev.user.mongo",value = "true", type = "String" },
    "roboshop.dev.user.redis_host",value = "redis.online:8080", type = "String" },
    "roboshop.dev.user.mongo_url",value = "mongodb://mongodb-{{env}}.afroz1.online:27017/users", type = "String" },
    ### passwords wil be never of git repos,
    { name = "roboshop.dev.payment.amqp_pass",value = "mysql-dev.afroz1.online", type = "SecureString" },
  ]
}
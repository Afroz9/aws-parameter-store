resource "aws_ssm_parameter" "params" {
  count = length(var.params)
  name  = var.params[count.index].name
  type  = var.params[count.index].type
  value = var.params[count.index].type
}

variable "params" {
  default = [
    { name = "roboshop.dev.frontend.catalogue_url",value = "http://catalogue.dev.afroz1.online", type = "String" },
    { name = "roboshop.dev.frontend.user_url",value = "http://user.dev.afroz1.online", type = "String" },
    { name = "roboshop.dev.frontend.cart_url",value = "http://cart.dev.afroz1.online", type = "String" },
    { name = "roboshop.dev.frontend.payment_url",value = "http://payment.dev.afroz1.online", type = "String" },
    { name = "roboshop.dev.frontend.shipping_url",value = "http://shipping.dev.afroz1.online", type = "String" },

  ]
}

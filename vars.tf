variable "instances" {
  default = {
    catalogue = {
      name = "frontend"
      type = "t3.micro"
    }
    user = {
      name = "mongodb"
      type = "t3.small"
    }
    user = {
      name = "catalogue"
      type = "t3.small"
    }
    user = {
      name = "redis"
      type = "t3.small"
    }
    user = {
      name = "cart"
      type = "t3.small"
    }
    user = {
      name = "user"
      type = "t3.small"
    }
    user = {
      name = "rabbitmq"
      type = "t3.small"
      password="roboshop123"
    }
    user = {
      name = "mysql"
      type = "t3.small"
      password="Roboshop@1"
    }
    user = {
      name = "shipping"
      type = "t3.small"
      password="Roboshop@1"
    }
    user = {
      name = "payment"
      type = "t3.small"
      paasword="roboshop123"
    }
  }
}
variable "instances" {
  default = {
    user = {
      name = "frontend"
      type = "t3.micro"
    }
    user = {
      name = "mongodb"
      type = "t3.micro"
    }
    user = {
      name = "catalogue"
      type = "t3.micro"
    }
    user = {
      name = "redis"
      type = "t3.micro"
    }
    user = {
      name = "cart"
      type = "t3.micro"

    }
    user = {
      name = "user"
      type = "t3.micro"
    }
    user = {
      name = "rabbitmq"
      type = "t3.micro"
      password="roboshop123"
    }
    user = {
      name = "mysql"
      type = "t3.micro"
      password="Roboshop@1"
    }
    user = {
      name = "shipping"
      type = "t3.micro"
      password="Roboshop@1"
    }
    user = {
      name = "payment"
      type = "t3.micro"
      paasword="roboshop123"
    }
  }
}
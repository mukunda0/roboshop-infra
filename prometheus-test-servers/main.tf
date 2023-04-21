resource "aws_spot_instance_request" "node1" {
  ami           = "ami-064eaf18e03a4bb5d"
  instance_type = "t3.micro"
  vpc_security_group_ids =[sg-04431cb92998376ef]
  wait_for_fulfillment = true
  tags = {
    name ="prometheus-test-server"
  }
}

resource "aws_ec2_tag" "node1" {
  resource_id = aws_spot_instance_request.node1.spot_instance_id
  key         = "Name"
  value       = "prometheus-test-server"
}
resource "aws_spot_instance_request" "node2" {
  ami           = "ami-064eaf18e03a4bb5d"
  instance_type = "t3.micro"
  vpc_security_group_ids =[sg-04431cb92998376ef]
  tags = {
    name ="prometheus-test-node"
  }
}

resource "aws_ec2_tag" "node2" {
  resource_id = aws_spot_instance_request.node2.spot_instance_id
  key         = "Name"
  value       = "prometheus-test-node"
}
module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  name = "ec2_tony"

  instance_type          = "t2.micro"
  key_name               = "tony"
  monitoring             = true
  vpc_security_group_ids = ["sg-0f63cf25acc873465"]
  subnet_id              = "subnet-0988124de4749f6c8"

  tags = {
    Environment = "Dev"
  }
}

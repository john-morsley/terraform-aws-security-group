#      ______    _____   ___  
#     |  ____|  / ____| |__ \ 
#     | |__    | |         ) |
#     |  __|   | |        / / 
#     | |____  | |____   / /_ 
#     |______|  \_____| |____| 

module "simple-ec2" {

  source = "./../../../terraform-aws-ec2"

  name = "example"

  ami = data.aws_ami.ubuntu.id
  instance_type = "t2.micro"

  vpc_id = module.simple-vpc.vpc_id

  #iam_instance_profile_name = module.iam.instance_profile_name

  public_subnet_id = module.simple-vpc.public_subnet_id

  security_group_ids = [ module.simple-security-group.id ]

}
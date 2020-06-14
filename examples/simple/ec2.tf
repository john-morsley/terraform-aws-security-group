#      ______    _____   ___  
#     |  ____|  / ____| |__ \ 
#     | |__    | |         ) |
#     |  __|   | |        / / 
#     | |____  | |____   / /_ 
#     |______|  \_____| |____| 

module "simple-ec2" {

  source = "./../../../terraform-aws-ec2"
  #source = "john-morsley/ec2/aws"

  name = var.ec2_name

  ami = data.aws_ami.ubuntu.id
  instance_type = var.ec2_instance_type

  vpc_id = module.simple-vpc.id

  public_subnet_id = module.simple-vpc.public_subnet_ids[0]

  security_group_ids = [ module.simple-security-group.id ]

  availability_zone = data.aws_availability_zones.available.names[0]

  bucket_name = local.name

  mock_depends_on = [
    module.s3_bucket
  ]
  
}
# VPC

vpc_name = "simple-example"
vpc_cidr = "10.0.0.0/16" # 65,531 (65,536 possible - 5 reserved by AWS)
public_subnet_cidrs = [ "10.0.0.0/24" ] # 251 (256 possible - 5 reserved by AWS)

# EC2

ec2_name = "simple-example"
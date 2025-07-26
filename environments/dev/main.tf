module "vpc"{
    source      ="../../modules/vpc"
    vpc_cidr    ="10.0.0.0/16"
    env         ="dev"
    subnet_cidr ="10.0.1.0.24"
    az          =us-east-1"

module "ec2"{

    source        ="../../modules/ec2
    ami-id        ="ami-020cba7c55df1f615"
    instance_type ="t2.medium"
    subnet_id     =module.vpc.subnet_id"
    ec2_count     =1
    env           ="dev"

}
}
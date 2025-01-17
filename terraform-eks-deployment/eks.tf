# eks.tf

module "eks" {
    source  = "terraform-aws-modules/eks/aws"
    version = "~> 20.0"
    cluster_name = "supermario-eks-cluster"
    cluster_version = "1.30"

    cluster_endpoint_public_access  = true

    vpc_id = module.my-vpc.vpc_id
    subnet_ids = module.my-vpc.private_subnets

    tags = {
        environment = "development"
        application = "myapp"
    }

    eks_managed_node_groups = {
        dev = {
            min_size = 1
            max_size = 2
            desired_size = 1
            instance_types = ["t2.micro"]
        }
    }
}
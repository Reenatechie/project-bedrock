module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "~> 21.0"

  name               = "project-bedrock-cluster"
  kubernetes_version = "1.32"

  #################################################
  # Authentication
  #################################################

  authentication_mode                      = "API_AND_CONFIG_MAP"
  enable_cluster_creator_admin_permissions = true

  #################################################
  # Networking
  #################################################

  vpc_id = data.terraform_remote_state.vpc.outputs.vpc_id

  subnet_ids = data.terraform_remote_state.vpc.outputs.private_subnets


  endpoint_public_access  = true
  endpoint_private_access = true

  #################################################
  # Managed Add-ons
  #################################################

  addons = {
    coredns = {
      most_recent = true
    }

    kube-proxy = {
      most_recent = true
    }

    vpc-cni = {
      most_recent = true
    }

  }

  #################################################
  # Managed Node Group
  #################################################

  #################################################
  # Managed Node Group
  #################################################

  eks_managed_node_groups = {
  default = {
    instance_types = ["t3.small"]
    ami_type       = "AL2023_x86_64_STANDARD"

    desired_size = 2
    min_size     = 2
    max_size     = 2

    capacity_type = "ON_DEMAND"

    tags = {
      Name = "default"
    }
  }
} 


  #################################################
  # Tags
  #################################################

  tags = {
    Project = "karatu-2025-capstone"
  }
}

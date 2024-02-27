provider "aws" {
 access_key = "AKIAXYKJQYX4VYTWVTH5"
 secret_key = "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"
 region     = "us-east-1"
}

resource "aws_opensearch_domain" "aws-elasticsearch" {
  domain_name    = "aws-elastcsearch-domain"
  engine_version = "Opensearch_1.3"

  cluster_config {
    instance_type = "m6g.large.search"
  }

  tags = {
    Domain = "aws-elastcsearch"
  }

   ebs_options {
    ebs_enabled = true
    volume_size = 10
  }
}

Execution:
===========
1. terraform init
2. terraform validate
3. terraform plan
4. terraform apply --auto-approve

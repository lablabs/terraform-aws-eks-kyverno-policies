/**
 * # AWS EKS Kyverno policies Terraform module
 *
 * A Terraform module to deploy the [kyverno-policies](https://kyverno.io/policies/) Helm chart on Amazon EKS cluster. Requires installation of Kyverno.
 *
 * [![Terraform validate](https://github.com/lablabs/terraform-aws-eks-kyverno-policies/actions/workflows/validate.yaml/badge.svg)](https://github.com/lablabs/terraform-aws-eks-kyverno-policies/actions/workflows/validate.yaml)
 * [![pre-commit](https://github.com/lablabs/terraform-aws-eks-kyverno-policies/actions/workflows/pre-commit.yml/badge.svg)](https://github.com/lablabs/terraform-aws-eks-kyverno-policies/actions/workflows/pre-commit.yml)
 */

locals {
  addon = {
    name = "kyverno-policies"

    helm_chart_version = "0.2.0"
    helm_repo_url      = "https://lablabs.github.io/kyverno-policies/"
  }

  addon_values = yamlencode({
  })

  addon_depends_on = []
}

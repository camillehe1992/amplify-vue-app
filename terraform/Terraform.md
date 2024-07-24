# Terraform Overview

The detailed information about Terraform infrastructure. Use command [terraform-docs](https://terraform-docs.io/user-guide/installation/)  to re-generate the readme.

```bash
cd terraform
terraform-docs -c .terraform-docs.yaml . > Terraform.md
```

## Providers

| Name | Version |
| ---- | ------- |
| aws  | 5.59.0  |

The module automatically inherits default provider configurations from its parent.

## Resources

| Name                                                                                                                     | Type     |
| ------------------------------------------------------------------------------------------------------------------------ | -------- |
| [aws_amplify_app.this](https://registry.terraform.io/providers/hashicorp/aws/5.59.0/docs/resources/amplify_app)          | resource |
| [aws_amplify_branch.develop](https://registry.terraform.io/providers/hashicorp/aws/5.59.0/docs/resources/amplify_branch) | resource |
| [aws_amplify_branch.main](https://registry.terraform.io/providers/hashicorp/aws/5.59.0/docs/resources/amplify_branch)    | resource |

## Inputs

| Name          | Description                                                                            | Type          | Default                                                     | Required |
| ------------- | -------------------------------------------------------------------------------------- | ------------- | ----------------------------------------------------------- | :------: |
| access\_token | Personal access token for a third-party source control system for an Amplify app       | `string`      | n/a                                                         |   yes    |
| aws\_profile  | AWS profile which used for terraform infra deployment                                  | `string`      | `"default"`                                                 |    no    |
| aws\_region   | AWS region                                                                             | `string`      | n/a                                                         |   yes    |
| environment   | The environment of application                                                         | `string`      | n/a                                                         |   yes    |
| nickname      | The nickname of application. Must be lowercase without special chars                   | `string`      | n/a                                                         |   yes    |
| repository    | The repository for source code                                                         | `string`      | `"https://github.com/camillehe1992/amplify-vue3-vite5-app"` |    no    |
| tags          | The key value pairs we want to apply as tags to the resources contained in this module | `map(string)` | n/a                                                         |   yes    |

## Outputs

| Name                       | Description                            |
| -------------------------- | -------------------------------------- |
| amplify\_app\_develop\_url | The domain url for develop environment |
| amplify\_app\_main\_url    | The domain url for prod environment    |

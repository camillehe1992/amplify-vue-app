# Terraform Overview

The detailed information about Terraform infrastructure. Use command [terraform-docs](https://terraform-docs.io/user-guide/installation/) to re-generate the readme.

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

| Name                                                                                                                  | Type     |
| --------------------------------------------------------------------------------------------------------------------- | -------- |
| [aws_amplify_app.this](https://registry.terraform.io/providers/hashicorp/aws/5.59.0/docs/resources/amplify_app)       | resource |
| [aws_amplify_branch.this](https://registry.terraform.io/providers/hashicorp/aws/5.59.0/docs/resources/amplify_branch) | resource |

## Inputs

| Name                        | Description                                                                                                         | Type          | Default     | Required |
| --------------------------- | ------------------------------------------------------------------------------------------------------------------- | ------------- | ----------- | :------: |
| access_token                | Personal access token for a third-party source control system for an Amplify app                                    | `string`      | n/a         |   yes    |
| aws_profile                 | AWS profile which used for terraform infra deployment                                                               | `string`      | `"default"` |    no    |
| aws_region                  | AWS region                                                                                                          | `string`      | n/a         |   yes    |
| branch_name                 | Name for the branch                                                                                                 | `string`      | n/a         |   yes    |
| enable_auto_build           | Enables auto building for the branch                                                                                | `bool`        | n/a         |   yes    |
| enable_pull_request_preview | Enables pull request previews for this branch                                                                       | `bool`        | n/a         |   yes    |
| environment                 | The environment of application                                                                                      | `string`      | n/a         |   yes    |
| nickname                    | The nickname of application. Must be lowercase without special chars                                                | `string`      | n/a         |   yes    |
| repository                  | The repository for source code                                                                                      | `string`      | n/a         |   yes    |
| stage                       | Describes the current stage for the branch. Valid values: PRODUCTION, BETA, DEVELOPMENT, EXPERIMENTAL, PULL_REQUEST | `string`      | n/a         |   yes    |
| tags                        | The key value pairs we want to apply as tags to the resources contained in this module                              | `map(string)` | n/a         |   yes    |

## Outputs

| Name            | Description                        |
| --------------- | ---------------------------------- |
| amplify_app_url | Default domain for the Amplify app |

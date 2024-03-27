module "repo" {
  # todo: point to public location (github or tf registry)
  source           = "../../terraform-github-repo"
  repo_name        = "{{cookiecutter.repo_name}}"
  repo_description = "{{cookiecutter.repo_description}}"
  repo_visibility  = "{{cookiecutter.repo_visibility}}"
  is_template      = {{cookiecutter.is_template}}  # No quotes to make it a bool
  template_owner   = "{{cookiecutter.template_owner}}"
  template_repo    = "{{cookiecutter.template_repo}}"

  secret_arn_github_PAT = var.secret_arn_github_PAT
  aws_region            = "{{ cookiecutter.aws_region_secrets_manager }}"
}

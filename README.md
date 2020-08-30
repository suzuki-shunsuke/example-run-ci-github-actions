# example-run-ci-github-actions

Example of run-ci on GitHub Actions

## Note: Personal Access Token is required

https://docs.github.com/en/actions/configuring-and-managing-workflows/authenticating-with-the-github_token#using-the-github_token-in-a-workflow

> When you use the repository's GITHUB_TOKEN to perform tasks on behalf of the GitHub Actions app,
> events triggered by the GITHUB_TOKEN will not create a new workflow run.
> This prevents you from accidentally creating recursive workflow runs.
> For example, if a workflow run pushes code using the repository's GITHUB_TOKEN,
> a new workflow will not run even when the repository contains a workflow configured to run when push events occur.

# GitOps

### v1.0.4

## `cicd-promote-dev.yaml`
- `on: workflow_call` | `on: workflow_dispatch`
- Checkout branch `dev`
- Update kustomizaiton.yaml
- Create Pull Request against `dev`

## `cicd-deploy-dev.yaml`

`environment: development`

## `cicd-hotfix.yaml`

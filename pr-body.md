Release PR in `dev` environment

`/<deployment>/deployment_id/dev/`

Deployment to `dev1` will take place when this PR is merged 

Comment to promote these changes to `staging` environment:
- `bump/`
- `promote/`

Payload:

```json
[
  {
    "image_id": "harbor.whalebone.io/whalebone/cd-gitops-demo",
    "image_tag": "main",
    "image_placeholder": "image-placeholder",
    "deployment": "deployments/cd-demo"
  },
  {
    "image_id": "harbor.whalebone.io/whalebone/cd-gitops-demo-alt",
    "image_tag": "1afch9",
    "deployment": "deployments/cd-demo"
  }
]
```

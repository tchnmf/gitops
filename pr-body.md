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
    "image_id": "registry.io/cd-gitops-demo-image-a",
    "image_tag": "cf9854",
    "image_placeholder": "",
    "deployment": "busybox"
  },
  {
    "image_id": "registry.io/cd-gitops-demo-image-b",
    "image_tag": "v1.0.4-dev",
    "image_placeholder": "cd-demo-b-image-placeholder",
    "deployment": "busybox"
  }
]
```

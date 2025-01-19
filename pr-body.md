Release PR in `staging` environment

`/<deployment>/deployment_id/staging/`

Deployment to `staging` will take place when this PR is merged 

Comment to promote these changes to **production** environment:
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
    "image_tag": "v1.0.4",
    "image_placeholder": "cd-demo-b-image-placeholder",
    "deployment": "busybox"
  }
]
```

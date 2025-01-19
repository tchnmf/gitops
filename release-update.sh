#!/bin/bash
#
# Usage:
#   release-update.sh payload.json /path/to/kustomization.yaml
#

payload_file=${1}
kustomize_file=${2}

#echo $release_file
#yq $kustomize_file


for item in $(cat $payload_file | jq -r '.[] | @base64'); do
    _jq() {
     echo ${item} | base64 --decode | jq -r ${1}
    }
   export image_id=$(_jq '.image_id')
   export image_tag=$(_jq '.image_tag')
   export image_ph=$(_jq '.image_ph')
   export deployment=$(_jq '.deployment')

   # if [ -z "$image_placeholder" ]; then

   yq  ' (.images.[] |  select(.. == env(image_id)) | .newTag) = env(image_tag) ' $kustomize_file > ${kustomize_file}.tmp
   cp ${kustomize_file}.tmp ${kustomize_file}

   yq   ' (.images.[] |  select(.. == env(image_ph)) | .newTag) = env(image_tag) ' $kustomize_file > ${kustomize_file}.tmp
   cp ${kustomize_file}.tmp ${kustomize_file}
done

yq $kustomize_file
rm ${kustomize_file}.tmp

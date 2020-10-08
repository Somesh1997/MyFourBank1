#
# kubectl kustomize
# OR
# sed on yaml file
# Get Docker image tag from Jenkins
if test -f "$[/myComponent/componentName]/dockerTag.txt"; then
  cat "$[/myComponent/componentName]/dockerTag.txt"
  source "$[/myComponent/componentName]/dockerTag.txt"
  cat ./$[/myComponent/componentName]/manifests/DEV/*.yml
  
  echo ===================before update docker image tag============================
  #sed -i "s/<<dockerImageTag>>/$dockerImageTag/g" ./$[/myComponent/componentName]/manifests/DEV/*.yaml
  sed -i "s/<<dockerImageTag>>/$dockerImageTag/g" ./$[/myComponent/componentName]/manifests/DEV/*.yml
  
  #cat ./$[/myComponent/componentName]/manifests/DEV/*.yaml
  cat ./$[/myComponent/componentName]/manifests/DEV/*.yml
fi

# OR
# Helm
#
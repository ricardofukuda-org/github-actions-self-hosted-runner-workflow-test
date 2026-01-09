# About

Contains simple test application to deploy on kubernetes using ArgoCD through GitHub Actions.

## CI Flow:
When a new merge pull request has been created, the GH actions "CI pipeline" is executed to build the docker image and run the unit tests. If the tests complete successfully, then the pull request merge is allowed after additional peer approve.

## CD Flow:
1 - User merges a pull request, then the user start the GH actions "CD pipeline" after selecting the target deployment enviroment (qa, prod, etc);
2 - Docker image is build, tagged and pushed to AWS ECR;
3 - The recently created docker tag is commited inside the git repo https://github.com/ricardofukuda-org/argocd-application-test responsible for centralize all the ArgoCD applications currently running inside kubernetes;
4 - ArgoCD automatically pulls the new commit (argocd-application-test) with the new docker tag then sync the ArgoCD Application - using kustomize - to update the helm chart deployment inside the kubernetes;
5 - Deployment completed.
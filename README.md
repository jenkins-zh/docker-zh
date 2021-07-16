## Jenkins Customize
Two forms of the distribution that you can find from here: docker image and jenkins.war file. All distributions include the following features:

* With the [update center mirror](https://github.com/jenkins-zh/mirror-proxy) which serves in China
* [Simplified Chinese Plugin](https://github.com/jenkinsci/localization-zh-cn-plugin)
* [Configuration as Code Plugin](https://github.com/jenkinsci/configuration-as-code-plugin/)

## Image
[![Docker Stars](https://img.shields.io/docker/stars/jenkinszh/jenkins-zh.svg)](https://hub.docker.com/r/jenkinszh/jenkins-zh/)
[![Docker Pulls](https://img.shields.io/docker/pulls/jenkinszh/jenkins-zh.svg)](https://hub.docker.com/r/jenkinszh/jenkins-zh/tags)

An example of running it：

`docker run --rm -p 8080:8080 jenkinszh/jenkins-zh:lts`

You can mount the volume by the following command:

`docker run -u root -v /var/jenkins/data:/var/jenkins_home -p 8080:8080 jenkinszh/jenkins-zh:lts`

Find all tags by [click here](https://github.com/jenkins-zh/jenkins-formulas/packages/134536/versions)。

## war
[![下载](https://api.bintray.com/packages/jenkins-zh/generic/jenkins/images/download.svg) ](https://bintray.com/jenkins-zh/generic/jenkins/_latestVersion)

Find all jenkins.war files by [click here](https://dl.bintray.com/jenkins-zh/generic/jenkins/).

## Formula
Below are some out-of-the-box solutions which I call them formulas

| Formula | File Name | Image |
|---|---|---|
| Configuration as Code | `jenkins-zh.war` | `jenkinszh/jenkins-zh` [![Docker Pulls](https://img.shields.io/docker/pulls/jenkinszh/jenkins-zh.svg)](https://hub.docker.com/r/jenkinszh/jenkins-zh/tags) |
| Configuration as Code + Pipeline| `jenkins-pipeline.war` | `jenkinszh/jenkins-pipeline` [![Docker Pulls](https://img.shields.io/docker/pulls/jenkinszh/jenkins-pipeline.svg)](https://hub.docker.com/r/jenkinszh/jenkins-pipeline/tags) |
| CASC + Pipeline + K8s | `jenkins-k8s.war` | `jenkinszh/jenkins-k8s:2.204.5` [![Docker Pulls](https://img.shields.io/docker/pulls/jenkinszh/jenkins-k8s.svg)](https://hub.docker.com/r/jenkinszh/jenkins-k8s/tags) |
| BlueOcean + Multi-branch Pipeline | `blueocean-zh.war` | `jenkinszh/blueocean-zh:2.204.5` [![Docker Pulls](https://img.shields.io/docker/pulls/jenkinszh/blueocean-zh.svg)](https://hub.docker.com/r/jenkinszh/blueocean-zh/tags) |
| Multi-branch Pipeline（GitHub、GitLab、Bitbucket）| `jenkins-multi-pipeline-zh.war` | `jenkinszh/jenkins-multi-pipeline-zh:2.204.5` [![Docker Pulls](https://img.shields.io/docker/pulls/jenkinszh/jenkins-multi-pipeline-zh.svg)](https://hub.docker.com/r/jenkinszh/jenkins-multi-pipeline-zh/tags) |
| OIDC | | `jenkinszh/jenkins-oic-auth:2.249.1` [![Docker Pulls](https://img.shields.io/docker/pulls/jenkinszh/jenkins-oic-auth.svg)](https://hub.docker.com/r/jenkinszh/jenkins-oic-auth/tags) |

Want to contribute a formula? Please learn how to create it from [here](formulas/README.md).

## Kubernetes
We suggest to use Helm Charts in Kubernetes, below are the example command of install Jenkins in a single-node cluster:

```shell script
helm repo add stable https://kubernetes-charts.storage.googleapis.com
helm install jenkins stable/jenkins \
    --set master.image=jenkinszh/jenkins-k8s \
    --set master.tag=2.204.5 \
    --set master.imagePullPolicy=IfNotPresent \
    --set persistence.enabled=false \
    --set master.serviceType=NodePort
```

You can get more details about [how to configure Jenkins chart](https://github.com/helm/charts/tree/master/stable/jenkins#configuration).

## References

[Jenkins Official Docker Hub](https://hub.docker.com/r/jenkins/jenkins/tags)

## Feedback
Any kind of contributions are very appreciate.

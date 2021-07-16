## Jenkins 中国定制版
目前定制版发行包括有：Docker 镜像、jenkins.war 文件。所有的 Jenkins 定制版本都包括如下的特性：

* 配置有部署在中国的[代理更新中心](https://github.com/jenkins-zh/mirror-proxy)（update center）
* [简体中文插件](https://github.com/jenkinsci/localization-zh-cn-plugin)

## 镜像
[![Docker Stars](https://img.shields.io/docker/stars/jenkinszh/jenkins-zh.svg)](https://hub.docker.com/r/jenkinszh/jenkins-zh/)
[![Docker Pulls](https://img.shields.io/docker/pulls/jenkinszh/jenkins-zh.svg)](https://hub.docker.com/r/jenkinszh/jenkins-zh/tags)

使用命令如下：

`docker run --rm -p 8080:8080 jenkinszh/jenkins-zh:lts`

下面的例子可以把 Jenkins 的数据目录挂载到本地：

`docker run -u root -v /var/jenkins/data:/var/jenkins_home -p 8080:8080 jenkinszh/jenkins-zh:lts`

[点击这里](https://github.com/jenkins-zh/jenkins-formulas/packages/134536/versions)查看所有 `docker tag` 的版本。

## war
[![下载](https://api.bintray.com/packages/jenkins-zh/generic/jenkins/images/download.svg) ](https://bintray.com/jenkins-zh/generic/jenkins/_latestVersion)

这种发行版除了包含上述的公共特性外，还包括：

* [配置即代码插件](https://github.com/jenkinsci/configuration-as-code-plugin/)

[点击这里](https://dl.bintray.com/jenkins-zh/generic/jenkins/)查看所有 `jenkins.war` 的版本。

## 配方
特定的用户场景下，通常会使用一组 Jenkins 插件及其配置，下面是一些常用的开箱即用的方案（也就是这里说的配方）：

| 配方 | 文件名 | 镜像 |
|---|---|---|
| 配置即代码 | `jenkins-zh.war` | `jenkinszh/jenkins-zh` [![Docker Pulls](https://img.shields.io/docker/pulls/jenkinszh/jenkins-zh.svg)](https://hub.docker.com/r/jenkinszh/jenkins-zh/tags) |
| 配置即代码 + 流水线| `jenkins-pipeline.war` | `jenkinszh/jenkins-pipeline` [![Docker Pulls](https://img.shields.io/docker/pulls/jenkinszh/jenkins-pipeline.svg)](https://hub.docker.com/r/jenkinszh/jenkins-pipeline/tags) |
| 配置即代码 + 流水线 + K8s | `jenkins-k8s.war` | `jenkinszh/jenkins-k8s:2.204.5` [![Docker Pulls](https://img.shields.io/docker/pulls/jenkinszh/jenkins-k8s.svg)](https://hub.docker.com/r/jenkinszh/jenkins-k8s/tags) |
| BlueOcean + 多分支流水线 | `blueocean-zh.war` | `jenkinszh/blueocean-zh:2.204.5` [![Docker Pulls](https://img.shields.io/docker/pulls/jenkinszh/blueocean-zh.svg)](https://hub.docker.com/r/jenkinszh/blueocean-zh/tags) |
| 多分支流水线（GitHub、GitLab、Bitbucket）| `jenkins-multi-pipeline-zh.war` | `jenkinszh/jenkins-multi-pipeline-zh:2.204.5` [![Docker Pulls](https://img.shields.io/docker/pulls/jenkinszh/jenkins-multi-pipeline-zh.svg)](https://hub.docker.com/r/jenkinszh/jenkins-multi-pipeline-zh/tags) |
| OIDC | | `jenkinszh/jenkins-oic-auth:2.249.1` [![Docker Pulls](https://img.shields.io/docker/pulls/jenkinszh/jenkins-oic-auth.svg)](https://hub.docker.com/r/jenkinszh/jenkins-oic-auth/tags) |

想要贡献一份配方？请在[这里](formulas/README-zh.md)学习如何提交配方。

## Kubernetes
在 Kubernetes 上，我们推荐使用 Helm Charts，下面是在单节点集群上安装 Jenkins 的命令参考：

```shell script
helm repo add stable https://kubernetes-charts.storage.googleapis.com
helm install jenkins stable/jenkins \
    --set master.image=jenkinszh/jenkins-k8s \
    --set master.tag=2.204.5 \
    --set master.imagePullPolicy=IfNotPresent \
    --set persistence.enabled=false \
    --set master.serviceType=NodePort
```

更多配置参数，请[参考这里](https://github.com/cloudnativeapp/charts/blob/master/curated/jenkins/README.md#configuration)。

## 贡献
所有的 `LTS` 版本都会分别创建对应的分支，`Weekly` 版本则是在 master 分支上来进行维护。

## 参考
[Jenkins 官方 Docker Hub 地址](https://hub.docker.com/r/jenkins/jenkins/tags)

## 反馈
该项目还处于早起阶段，我们欢迎任何人以任何形式帮助完善、提出改进建议。

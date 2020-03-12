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

[点击这里](https://github.com/jenkins-zh/docker-zh/packages/134536/versions)查看所有 `docker tag` 的版本。

## war
[![下载](https://api.bintray.com/packages/jenkins-zh/generic/jenkins/images/download.svg) ](https://bintray.com/jenkins-zh/generic/jenkins/_latestVersion)

这种发行版除了包含上述的公共特性外，还包括：

* [配置即代码插件](https://github.com/jenkinsci/configuration-as-code-plugin/)

[点击这里](https://dl.bintray.com/jenkins-zh/generic/jenkins/)查看所有 `jenkins.war` 的版本。

## 配方
特定的用户场景下，通常会使用一组 Jenkins 插件及其配置，下面是一些常用的开箱即用的方案（也就是这里说的配方）：

| 配方 | 文件名 |
|---|---|
| 配置即代码 | `jenkins-zh.war` |
| 配置即代码 + 流水线| `jenkins-pipeline-zh.war` |

想要分享一个配方？只要按照[配方的介绍](formulas/README.md)提交一个 Pull Request 后，你就可以使用了。

## 参考
[Jenkins 官方 Docker Hub 地址](https://hub.docker.com/r/jenkins/jenkins/tags)

## 反馈
该项目还处于早起阶段，我们欢迎任何人以任何形式帮助完善、提出改进建议。

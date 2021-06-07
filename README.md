# docker-stack-xtls-open

该项目用于使用docker一件部署xray的xtls+nginx+web+fallback模式代理。

注意，该项目的使用需要具备一定的基础知识，不属于一键脚本范畴，仅简化docker compose file和文件模板步骤。

## 用法

1. 首先你要有一个已经指向自己服务器ip地址的域名，此处不解释。
2. 安装docker,详情见docker官网。
3. git pull本项目。
4. 在项目路径中修改nginx和xray的配置文件，在有中文备注的地方修改成自己的信息。
5. 在项目目录下运行bash ./deploy.sh，输入证书信息等开始部署。
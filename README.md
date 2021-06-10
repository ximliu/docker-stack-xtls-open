# docker-stack-xtls-open

该项目用于使用docker一键部署xray的xtls+nginx+web+fallback模式代理。但前提是你要自行修改xray和nginx的配置文件，因此需要具备一定的基础知识。

## 用法

1. 首先你要有一个已经指向自己服务器ip地址的域名，推荐使用Cloudflare解析。
2. `git clone https://github.com/floatingrain/docker-stack-xtls-open.git `克隆本项目
3. 运行`bash install-docker.sh`安装docker。
4. 修改项目中的nginx和xray的配置文件，在有中文备注的地方修改成自己的信息。
5. 将你的伪装网站放入`docker-stack-xtls-open/nginx/usr-share-nginx-html`下，并改名`index.html`，本项目已经有一个示例网站。
6. 在项目目录下运行`bash ./deploy.sh`，输入证书信息等开始部署。

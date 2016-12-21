##巡风



项目地址： https://github.com/ysrc/xunfeng

Medicean Docker版本：https://github.com/Medicean/VulApps/tree/master/tools/xunfeng

Atiger77 Docker版本：https://github.com/atiger77/XunFeng_Docker

详细介绍&&ubuntu安装方法可以看:http://www.mottoin.com/94253.html

PS: 这里需要注意部署mongo版本必须在3.2及以上，否则导入db目录中的bson和json文件会出现索引错误。
   
### 部署方式
1.文件介绍

  mongoauth.txt mongo认证文件
  
  Config.py Flask的配置文件，其中存放mongo密码要与上一个文件保持一致
  
  MongoDB-org-3.2.repo mongodb的repo文件
  
  Run.sh 执行文件，在docker启动后会执行
  
  Dockerfile docker镜像生产文件

2.部署方式
  a. 下载全部文件
  
  ```
  $git clone git@github.com:atiger77/XunFeng_Docker.git
  ```

  b. 修改密码后生成镜像
  
  ```
  #docker build -t "xunfeng:v1" . 
  ```

  c. 启动镜像
  
  ```
  #docker run -d -p 80:80 -d /var/log/xunfeng:/var/log/xunfeng xunfeng:v1
  ```
 
##想说的话
> 这个项目对于中小型的公司而言是个很好的福利，感谢同程的开源分享精神。这里用docker的好处是不需要复杂的环境依赖，起一个容器就可以使用，如果想长期使用还是建议部署在物理机上，docker不适合跑有状态的服务且不方便以后的扩展，想试试看这款扫描器的话倒是可以用容器玩一玩，我的dockerfile还可以继续改进如果有兴趣你可以继续fork去改一改。也是希望有越来越多的好的开源安全项目。

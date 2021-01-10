# webdavDownload
Automatically download files and upload to webdav network disk.

# 基本功能
利用vps下载文件，并自动上传到支持webdav协议的网盘(如坚果云)，利用webdav设置的自动同步功能，下载回本地电脑。
- 1、判断是否存在cadaver服务
- 2、下载文件到vps的指定目录
- 3、上传文件到指定目录，自动bye退出

# 使用方法
```shell
chmod +x ./webdavDownload.sh #给权限
./webdavDownload.sh 链接 #使用
#./webdavDownload.sh https://wiztreefree.com/files/wiztree_3_35_setup.exe #示例
```

# 配置方法
- 1、下载项目，并编辑脚本中对应的路径
```shell
git clone https://github.com/abc1044/webdavDownload.git
cd webdavDownload/webdavDownload.sh
```
- 2、安装cadaver服务
```shell
apt install -y cadaver
```
- 3、配置webdav登陆密钥，在根目录下新建.netrc文件，内容为：
```shell
machine dav.jianguoyun.com
login 账号
password 密钥
```
- 4、给脚本权限
```shell
chmod +x ./webdavDownload.sh
```
- 5、配置完成，可以正常使用了。使用方法：脚本+链接即可
```shell
./webdavDownload.sh 链接
#./webdavDownload.sh https://wiztreefree.com/files/wiztree_3_35_setup.exe #示例
```

# 待办
- bug：上传的时候是按时间排序的，文件可能会传错
- 1、大于500mb的文件自动切割
- 2、自动切割后批量上传，写到cadaverSetup.txt中
- 2、设定参数，支持上传本地文件
- 3、设定参数，支持下载后删除文件
- 4、设定参数，支持修改上传的文件位置
- 5、增加交互功能，同时保持简洁

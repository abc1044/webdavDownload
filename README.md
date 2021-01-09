# webdavDownload
Automatically download files and upload to webdav network disk.

# 基本功能
- 1、判断是否存在cadaver服务
- 2、下载文件到vps，download_bc
- 3、上传文件到指定目录，自动bye退出

# 使用方法
- 权限：chmod +x ./webdavDownload.sh
- 使用：./webdavDownload.sh 链接
- 示例：./webdavDownload.sh https://wiztreefree.com/files/wiztree_3_35_setup.exe

# 提前配置的内容
- 1、在坚果云开启webdav，获取密钥
- 2、在vps根目录下新建.netrc文件
内容为：
```shell
machine dav.jianguoyun.com
login 账号
password 密钥
```
- 3、在脚本中修改对应的文件夹位置

# 待办
- bug：上传的时候是按时间排序的，文件可能会传错
- 1、大于500mb的文件自动切割
- 2、自动切割后批量上传，写到cadaverSetup.txt中
- 2、设定参数，支持上传本地文件
- 3、设定参数，支持下载后删除文件
- 4、设定参数，支持修改上传的文件位置
- 5、增加交互功能，同时保持简洁

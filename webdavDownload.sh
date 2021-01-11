#!/bin/bash
cd
#test cadaver service exist?
if ! [ -x "$(command -v cadaver)" ]; then
  echo 'Error: cadaver no found,please try:apt install -y cadaver' >&2
  exit 1
fi

#set fileAddress
fileAddress=download_bc # <---Set download address
if [ ! -d $fileAddress ];then
 mkdir $fileAddress
fi

#test diskRemain
diskRemain=`df -k | sed -n 2p | awk '{print $4}'`
echo diskRemian:$diskRemian

#wget +link
cd $fileAddress
wget $1

#get fileName
fileName=`ls -rt |head -n1|awk '{print $0}'`
echo sieze and name
du -h $fileName
cd

#set webdavSetup.txt
cat>$fileAddress/webdavSetup.txt<<EOF
ls
put $fileAddress/$fileName

echo Upload Succeed:$fileAddress/$fileName
bye
EOF

#connect webdav
cadaver https://dav.jianguoyun.com/dav/bc/DownloadVPS/ < $fileAddress/webdavSetup.txt  #<---Set upload address

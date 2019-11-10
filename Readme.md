talib.dll  pascal头   delphi demo!



talib dll工程文件来自Github  https://github.com/sumorf/talib


需要事先下载  ta-lib-0.4.0，然后将本Dll目录下的vs2007目录复制到 ta-lib-0.4.0-msvc\ta-lib\c\ide\下，再进行编译



![enter image description here](https://github.com/UserWenxin/talib4Pascal/blob/master/images/Demo.jpg?raw=true)


Demo code:  计算SMA为例子； 

    Z_Ma(0,99,@CloseList.RawData[0],5,TA_MAType.TA_MAType_SMA{0},outbegidx,outnbelement,@MaList.RawData[0]);


2019.11 by 静夜思

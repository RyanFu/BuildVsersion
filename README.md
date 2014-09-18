BuildVsersion
=============

The Best of All Possible Xcode Automated Build Numbering Techniques

###版本号：
1. Build版本号： Build在plist中的key是“CFBundleVersion”，代表build的版本号，
2. Version版本号 Version在plist文件中的key是“CFBundleShortVersionString”

Key 都在字典 [[NSBundle mainBundle] infoDictionary] 中。

###Install

1. 选中项目的target，点击“Build Phases“
2. 点击右下角的”Add Build Phrase“，选择”Add run script“，会产生一个新的Run Script项
3. 拖拽新生成的Run Script项到最上面
4. 点开该项，copy下面的shell代码进去

###Usage：
1. Build默认是git的提交数目
2. Version 默认为Archive的次数

#ToDo：
由于对Shell不熟，Version的计数为整数不存在 x.x.x 的情况，于实际需求不符。

参考内容:
http://joeyio.com/ios/2013/05/25/xcode-version-management/
http://www.cnblogs.com/tinkl/p/3723638.html
http://blog.jaredsinclair.com/post/97193356620/the-best-of-all-possible-xcode-automated-build

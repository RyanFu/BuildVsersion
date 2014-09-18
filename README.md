BuildVsersion
=============

The Best of All Possible Xcode Automated Build Numbering Techniques

#版本号：
## Build版本号： Build在plist中的key是“CFBundleVersion”，代表build的版本号，
## Version版本号 Version在plist文件中的key是“CFBundleShortVersionString”

Key 都在字典 [[NSBundle mainBundle] infoDictionary] 中。

#Install

## 选中项目的target，点击“Build Phases“
## 点击右下角的”Add Build Phrase“，选择”Add run script“，会产生一个新的Run Script项
## 拖拽新生成的Run Script项到最上面
## 点开该项，copy下面的shell代码进去

#Usage：
## Build默认是git的提交数目
## Version 默认为Archive的次数

#ToDo：
由于对Shell不熟，Version的计数为整数不存在 x.x.x 的情况，于实际需求不符。

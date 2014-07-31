
[转载]用R进行网页表格数据抓取
[此博文包含视频] (2013-11-10 09:51:40)
转载▼
标签：
转载
	分类： 数据分析
这是我的另一个博客的原创文章
原文地址：用R进行网页表格数据抓取作者：i数据流
越来越多的数据被放上网站上，如果不想自己一行一行复制粘贴，是否有一劳永逸的方法让电脑自己抓取网页上的数据呢？想得到，就能做得到。除了现在相当流行的API，直接从网页上抓数据在R中很容易就能被实现。

第一步：安装程序包。
两行命令，不到一秒时间内完成：
require(XML)
require(RCurl)

第二步：抓取网页的源代码。
只需要知道网址就OK了。程序包RCurl能自动为你做。命令两三行：
  webpage<-getURL(link)
  webpage <- readLines(tc <- textConnection(webpage)); close(tc)
  pagetree <- htmlTreeParse(webpage, error=function(...){}, useInternalNodes = TRUE)

第三步：选定表格。
网页上肯定不止一个表格，要什么样的，用html语言@限定
  tablehead <- xpathSApply(pagetree, "//table//th", xmlValue) ＃这里是抓表格的标题。“”中是html语言
  result<-xpathSApply(pagetree,"//table//td",xmlValue) ＃这里是表格内容。

好了，数据非常好看的拿到手了！

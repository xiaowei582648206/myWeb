# info-comm爬虫项目介绍

版本：RC-V1.0.20181022

简介：info-comm内有两个项目，book_spiders和pipelines。book_spiders爬取图书详情数据和图书评论数据，再由activemq发送09_p_spider的消息给到pipelines。pipelines监听到消息后，进行以下步骤：

​	1.检查数据，校验isbn。

​	2.根据isbn查询中图分类编号。

​	3.根据营销分类名查询营销分类编号。

​	4.查询mysql数据库中是否已有此条数据，有则不再下载图片。

​	5.下载图片至本地nginx图片服务器的指定目录。

​	6.根据出版社名字查询出版社编号。

​	7.清洗数据格式。

​	8.推送此条数据至elasticsearch中的图书详情索引(web_page_p_book_info_09)和图书评论索引(web_page_p_book_comment_09)



### 图书爬虫（book_spiders）

爬虫分类：

​	1.图书爬虫，根据mysql数据库09spider.site_book中的url任务爬取图书详情和评论数据

​	2.排行榜爬虫，根据mysql数据库09inter.web_page_p_toplist_09中的url任务爬取图书详情和评论数据

​	3.出版社爬虫，根据当当网上目标出版社的所有分类下的图书url爬取本社图书内容。

数据源：当当网，京东网，亚马逊

图书种类：01纸质书，02电子书






### 数据通道（pipelines）

功能点：

​	1.从activemq接收数据，校验isbn。

​	2.根据isbn查询中图分类编号。

​	3.根据营销分类名查询营销分类编号。

​	4.查询mysql数据库中是否已有此条数据，有则不再下载图片。

​	5.下载图片至本地nginx图片服务器的指定目录。

​	6.根据出版社名字查询出版社编号。

​	7.清洗数据格式。

​	8.推送此条数据至elasticsearch中的图书详情索引(web_page_p_book_info_09)和图书评论索引(web_page_p_book_comment_09)



### 中间件依赖

1. elasticsearch
2. activemq
3. redis
4. mysql



### python3环境依赖

Package          Version  

---------------- ---------
asn1crypto       0.24.0   
attrs            18.2.0   
Automat          0.7.0    
certifi          2018.8.24
cffi             1.11.5   
chardet          3.0.4    
constantly       15.1.0   
cryptography     2.3.1    
cssselect        1.0.3    
docopt           0.6.2    
elasticsearch    6.3.1    
hyperlink        18.0.0   
idna             2.7      
incremental      17.5.0   
lxml             4.2.5    
numpy            1.15.2   
parsel           1.5.0    
pip              18.0     
pyasn1           0.4.4    
pyasn1-modules   0.2.2    
pycparser        2.19     
PyDispatcher     2.0.5    
PyHamcrest       1.9.0    
PyMySQL          0.9.2    
pyOpenSSL        18.0.0   
PyYAML           3.13     
queuelib         1.5.0    
redis            2.10.6   
requests         2.19.1   
Scrapy           1.5.1    
scrapy-redis     0.6.8    
scrapy-splash    0.7.2    
service-identity 17.0.0   
setuptools       39.0.1   
six              1.11.0   
stomp.py         4.1.21   
Twisted          18.7.0   
urllib3          1.23     
w3lib            1.19.0   
zope.interface   4.5.0    




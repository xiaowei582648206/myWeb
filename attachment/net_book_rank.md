电商图书排行版爬虫项目

    项目启动脚本：
    1. ./qd_day.sh: 起点中文网网络文学排行榜日榜
    2. ./qd_month.sh: 起点中文网网络文学排行榜月榜

    项目工作流程
    1.配置文件logging.yaml中设置日志级别，日志文件路径
    2.运行爬虫启动脚本
    3.爬虫爬取来源数据：起点中文网
    4.pipelines中将爬取到的数据存入mysql
    5.日志打印到文件，以日期分类保存

    依赖安装
    1.安装爬虫框架：conda install scrapy
    2.安装mysql包: conda install pymysql
    3.安装yaml包: conda install pyyaml
    4.安装requests包: conda install requests
    
    项目结构：
    /net_book_rank/net_book_rank/spiders：爬虫包
    /net_book_rank/net_book_rank/conf：配置文件包
    /net_book_rank/net_book_rank/log：日志文件夹
    /net_book_rank/net_book_rank/items.py：实体类
    /net_book_rank/net_book_rank/middlewares.py：中间件
    /net_book_rank/net_book_rank/pipelines.py：数据通道类
    /net_book_rank/net_book_rank/settings.py：scrapy配置类
    /net_book_rank/net_book_rank/bin：爬虫启动脚本文件夹
    /net_book_rank/net_book_rank/conf.py: 配置文件处理类
    /net_book_rank/net_book_rank/mylogger.py: 自定义日志处理类

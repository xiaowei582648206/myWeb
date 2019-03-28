电商图书排行版爬虫项目

    项目启动脚本：
    1. ./amazon_day.sh: 亚马逊网站图书排行榜日榜
    2. ./amazon_e_book_day.sh: 亚马逊网站电子图书排行榜日榜
    3. ./dd_day.sh: 当当图书排行榜日榜
    4. ./dd_week.sh: 当当图书排行榜周榜
    5. ./dd_month.sh: 当当图书排行榜月榜
    6. ./dd_year.sh: 当当图书排行榜年榜
    7. ./dd_ebook_day.sh: 当当电子图书排行榜日榜
    8. ./dd_ebook_week.sh: 当当电子图书排行榜周榜
    9. ./dd_ebook_month.sh: 当当电子图书排行榜月榜
    10. ./jd_hot_review.sh: 京东图书热评榜日榜
    11. ./jd_day.sh: 京东图书排行榜日榜
    12. ./jd_week.sh: 京东图书排行榜周榜
    13. ./jd_month.sh: 京东图书排行榜月榜
    14. ./jd_year.sh: 京东图书排行榜年榜
    15. ./jd_ebook_day.sh: 京东电子图书排行榜日榜
    16. ./jd_ebook_week.sh: 京东电子图书排行榜周榜
    17. ./jd_ebook_month.sh: 京东电子图书排行榜月榜

    项目工作流程
    1.配置文件logging.yaml中设置日志级别，日志文件路径
    2.运行爬虫启动脚本
    3.爬虫爬取来源数据：京东，当当，亚马逊图书
    4.pipelines中将爬取到的数据存入mysql
    5.日志打印到文件，以日期分类保存

    依赖安装
    1.安装爬虫框架：conda install scrapy
    2.安装mysql包: conda install pymysql
    3.安装yaml包: conda install pyyaml
    4.安装requests包: conda install requests
    
    项目结构：
    /book_rank/book_rank/spiders：爬虫包
    /book_rank/book_rank/conf：配置文件包
    /book_rank/book_rank/log：日志文件夹
    /book_rank/book_rank/items.py：实体类
    /book_rank/book_rank/middlewares.py：中间件
    /book_rank/book_rank/pipelines.py：数据通道类
    /book_rank/book_rank/settings.py：scrapy配置类
    /book_rank/book_rank/bin：爬虫启动脚本文件夹
    /book_rank/book_rank/categoryServer.py: 通过图书的isbn查询该图书的中图分类号
    /book_rank/book_rank/collection_server.py: 通过图书的isbn查询该图书的馆藏数据信息
    /book_rank/book_rank/conf.py: 配置文件处理类
    /book_rank/book_rank/mylogger.py: 自定义日志处理类
    /book_rank/book_rank/util.py: 通用方法类

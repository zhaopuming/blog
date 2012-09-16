---
layout: post
title: Ubuntu下使用PostgreSQL
tags: D
---

## 概述

PostgreSQL相比与MySQL有不少优点，所以花些精力来学习使用，是很值得的。
除了Administration方面有比较大的区别，两者其实很相似。
这里介绍一下Ubuntu下我自己使用PostgreSQL的经验。 

<p class="title" id="installation"></p>

## 安装

我使用的环境：

* Ubuntu 12.04 LTS
* PostgreSQL 9.1

Ubuntu下可以直接使用apt-get安装PostgreSQL，非常方便：
{% highlight bash %}
sudo apt-get install postgresql
{% endhighlight %}

即可。

**注意**：PostgreSQL的默认用户是postgre，并且在Ubuntu下是无密码的。

Postgre用户系统是区分数据库用户和Linux用户的，所以需要在数据库里建立用户。

我们平时登录的默认用户，比如我的是visus，无法直接使用PostgreSQL的客户端psql登录数据库。
这时候，需要先使用postgre用户登录，在PostgreSQL数据库里建立visus用户。

## 建立自己的用户

首先用postgre用户登录psql客户端：

{% highlight bash %}
sudo -u postgre psql
{% endhighlight %}

注意postgre无密码，因此不能直接通过su转换过去。
（你也可以使用`passwd`命令改变postgre用户属性，不过这个不推荐）

登录进去后是一个PostgreSQL自己的交互式命令行界面

可以输入help查看有哪些命令。

{% highlight bash %}
postgres=# help
{% endhighlight %}

下面建立角色visus, 在psql中键入：

{% highlight sql %}
CREATE ROLE visus LOGIN;
{% endhighlight %}

查看用户(角色)是否建好：

{% highlight sql %}
SELECT rolname FROM pg_roles;
{% endhighlight %} <!--_-->

如果结果中出现visus，则已经建好：
{% highlight text %}
rolname
----------
postgres
visus
{% endhighlight %}

这时候可以退出到系统命令行，直接使用visus登录了：

{% highlight bash %}
visus@visus:~$ psql
{% endhighlight %}

<a id="create-db"><!----></a>

## 建立数据库

TODO


## 参考链接

TODO











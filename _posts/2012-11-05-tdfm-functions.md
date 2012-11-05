---
layout: post
title: 第一章 地球
category: the-d-from-mars
tags: [D]
---


### 函数相关的进阶特性

#### 1. in/out

#### 2. ref

#### 3. vararg

#### 4. const/pure/nothrow


### 其他形式的函数

在汉字里，“回”字有四种写法；同样在D语言中，函数有4种形式：function, delegate, function literal，以及lambda，这里我们先只介绍两种：

1. 普通函数
{% highlight d %}
int sum(int a, int b)
{
  return a + b;
}
{% endhighlight %}

1. lambda:

{% highlight d %}
auto sum = (int x, int y) => x + y;
{% endhighlight %}

这两个函数定义基本是一致的(lambda实际上是一个delegate)，使用方法一样：
{% highlight java %}
sum(10, 20)
{% endhighlight %}

调用后得到30。

<p class="title" id="advanced-topics"></p>

## 高级特性传送门


---
layout: post
title: 第一章 地球
category: the-d-from-mars
tags: [D]
---

## 地球，火星之路的起点

去火星的路很长，我们先从地球开始。最遥远的那些高级语言特性：函数式、模板元编程、并发编程、分布式通讯、底层代码等，
都还在天际，我们先认识一下D语言中我们似层相识的那些特性。天际的风景，慢慢走过去欣赏。

注：如果你想坐火箭或者走传送门，请移步：[高级特性](posts/tdfm-earth#advanced-topics)

这里，你会发现C，你会发现C++，你会发现Java，甚至会发现Python的影子。
没错，D是一门很实用主义的语言，作为工程师，Walter自然不介意引入其他语言中最好的特性，
来完善自己语言的核心功能。

出发。


<p class="title" id="functions"></p>

## 函数

第一步是函数。在D语言中，函数有4种形式：function, delegate, function literal，以及lambda，这里我们先只介绍两种：

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

-TODO-



---
layout: post
title: 第一章 地球
category: the-d-from-mars
tags: [D]
---

## 地球，火星之路的起点

去火星的路很长，我们先从地球开始。最遥远的那些高级语言特性：函数式、模板元编程、并发编程、分布式通讯、底层代码等，
都还在天际，先认识一下D语言中似曾相识的那些特性吧。天际的风景，待慢慢走过去欣赏。

在地球上你会浏览到其他语言中常见的特性，并看到他们在D语言中和其他语言中有哪些异同。

这里，你会发现C，你会发现C++，你会发现Java，甚至会发现Python的影子。
没错，D是一门很实用主义的语言，作为工程师，Walter自然不介意引入其他语言中最好的特性，
来完善自己语言的核心功能。


从这里可见一斑。如果你具有C/C++，或者Java/C#语言背景，那么恭喜你，离能够使用D语言编写一般程序只有几天之遥。


出发。

注：如果你想坐火箭或者走传送门，请移步：[高级特性](posts/tdfm-earth#advanced-topics)

<p class="title" id="functions"></p>

## 函数

通往火星的地球之路上，第一道风景是函数。

不管你出身于哪一门编程语言，应该都熟悉函数；甚至如果没编过程序，也应当接触`f(x) = x * x`这样的数学函数。  
D语言的函数和其他语言的函数没有太本质的区别，也是输入一些参数，通过计算，返回某种结果的操作。

我们以square函数`f(x) = x * x`作为例子。

一个典型的C语言的函数如下：

{% highlight c %}
int square(int x)
{
  return x * x;
}
{% endhighlight %} <!-- * -->


同样的函数，在Javascript里是这个样子：

{% highlight javascript %}
function square(x) {
  return x * x;
}
{% endhighlight %} <!-- * -->

在D语言中，这个函数的基本形式和C差不多：

{% highlight d %}
int square(int x)
{
  return x * x;
}
{% endhighlight %} <!-- * -->

可以看到，在这个简单的函数中，D语言和C语言的声明和实现一模一样。  
实际上D语言直接继承了C语言大部分的语法，只是去除了那些最容易导致问题的特性（比如预处理），而使用D本身的更安全的特性来实现。




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

-TODO-




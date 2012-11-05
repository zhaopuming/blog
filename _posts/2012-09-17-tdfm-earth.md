---
layout: post
title: 第一章 地球
category: the-d-from-mars
tags: [D]
---

## 地球，火星之路的起点

去火星的路很长，我们先从地球开始。
最遥远的那些高级语言特性：函数式、模板元编程、并发编程、分布式通讯、底层代码等，
都还在天际，先认识一下D语言中似曾相识的那些特性吧。天际的风景，待慢慢走过去欣赏。

而在地球上，你遇到的会是似曾相识的景色，C、C++、Java甚至Python语言中常见的特性与功能，
几乎都能发现。在这里使用D语言，可以完全模仿C++或者Java的口音(风格)来叙述你的程序逻辑。

你会浏览到其他语言中常见的特性，并看到他们在D语言中和其他语言中有哪些异同。
没错，D是一门很实用主义的语言，作为工程师，Walter自然不介意引入其他语言中最好的特性，
来完善自己语言的核心功能。


如果你具有C/C++，Java或者C#语言的背景，那么恭喜，
大概只需要几天功夫熟悉这些语法，就可以使用D语言来编写C++/Java风格的简单程序了。


出发。你会见到如下的风景：函数、数组、关联数组(Associate Array)、类。
这一小段旅程结束之后，再配合一些常用的标准库知识，已经可以写出很多程序了。

注：如果你想坐火箭或者走传送门，请移步：[高级特性](posts/tdfm-earth#advanced-topics)

<p class="title" id="functions"></p>


## 函数

通往火星的地球之路上，第一道风景是函数。

不管你出身于哪一门编程语言，应该都已经很熟悉函数了；
甚至若没编过程序，也应当接触`f(x) = x * x`这样的数学函数吧。
函数的功能是将输入参数转化为输出结果。
比如square函数，`x`是参数，而结果`f(x)`是通过`x*x`的转换得来的。


### 函数定义

D语言中这个square函数的定义如下：

{% highlight d %}
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

在C语言中：

{% highlight c %}
int square(int x)
{
  return x * x;
}
{% endhighlight %} <!-- * -->

可以看到，在这个简单的函数中，D语言和C语言的定义形式上一模一样。  

两个参数的函数是这样定义的：

{% highlight d %}
string concat(string head, string tail)
{
  return head ~ tail;
}
{% endhighlight %}

上面这个函数实现的功能是将两个字符串合并起来：
{% highlight d %}
string s = concat("Hello", " world!"); // s的值是："Hello world!"
{% endhighlight %}

值得注意的是`~`符号，这个符号是D独有的，表示数组的连接操作
（string类型在D语言中，事实上就是一个`char[]`数组，参看[数组](posts/tdfm-arrays)和[字符串](posts/tdfm-strings))


### 函数调用

调用函数时，和C语言一样，使用`()`符号。这个符号在D语言中称为[opApply](posts/tdfm-operators#opApply)。

{% highlight java %}
int n = square(5); // n的值是25
{% endhighlight %}

<div class="info">
  实际上D语言直接继承了C语言大部分的语法，只是去除了那些最容易导致问题的特性（比如预处理），
  而使用D本身的更安全的特性来实现。
</div>

<br/>

### 小结：函数

函数是D语言编程的基本组件。事实上一切程序都不过是各种函数调用组合起来实现数据的输入输出流程而已。
其他的语言特性，事实上都是围绕函数来设计的：

- 类和继承体系，是为了更方便地组织相关的函数。
- 模板和元编程，是为了扩展一个函数实现到更多的类型上。
- 标准库，事实上就是组织好的最常用的函数的集合。


事实上，D语言的函数特性设计地比较复杂，
为了强大的功能，而设计了很多语言功能。
在这段初步介绍中就不提及了。
如果想了解关于函数的更详细的介绍，请移步[函数详解](posts/tdfm-functions)。



<p class="title" id="arrays"></p>

## 数组

D语言也是内置支持数组的。而且D语言中的数组使用起来远比C/C++方便。

**数组定义**

{% highlight d %}
int[] numbers = [1, 2, 3, 4];
{% endhighlight %}, <!--[]() -->


**数组合并**

{% highlight d %}
int[] a = [1, 2, 3];
int[] b = [4, 5];
int[] combined = a ~ b; // [1, 2, 3, 4, 5]
{% endhighlight %} <!--[]()-->

**数组切分**

{% highlight d %}
string[] heroes = ["大娃", "二娃", "三娃", "四娃", "五娃", "六娃", "七娃"];
string[] x = heroes[0 .. 2]; // x的值是["大娃", "二娃", "三娃"];
string[] y = heroes[3 .. $]; // y的值是 ["四娃", "五娃", "六娃", "七娃"]
{% endhighlight %} <!--[]()-->

注意：

1. `..`符号表示“从...到...”的范围。这个符号使得D语言的范围定义非常浅显易读。

1. `$`符号([opDollar](posts/tdfm-operators#opDollar))在数组环境中表示`array.length - 1`，
所以`heroes[3 .. $]`实际上相当于`heroes[3 .. 6]`。这和python有些相似，只是使用了更明确的$符号来表示数组结尾。

1. 在D语言中，类似上面的切分操作，










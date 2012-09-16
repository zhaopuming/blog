---
layout: post
title: 来自火星的D语言
---

## 前言

D语言来自Digital Mars公司，创立人Walter Bright是位充满了工程师梦想的编译器大牛。
D语言最初版本时叫Mars语言。你没看错，当时就是叫*火星文*。后来因为和C/C++太像，
又确实很有超越C++的范儿，结果大家都习惯于叫它D了。于是便有了D。

Walter显然自己还是很怀念火星这个名字的，大概和他儿时的梦想有关。
直至今日，D语言的标准库仍然命名为[Phobos](https://github.com/D-Programming-Language/phobos)（火卫一），
而D语言的标准C绑定库集合命名为[Deimos](https://github.com/D-Programming-Deimos)（火卫二）。
所以火星文虽然改名叫了D，仍然是火星文。

既然D出身于C/C++世家，又从火星而来，所以人们不免会着眼于对比C/C++和D。
可惜我本身并不是C/C++专业户，所以只能进行一些浅显的对比。
我更希望，大家能把D当作一门新语言来对待，这样反而更容易上手。
下面的介绍，就按照新语言的方式来进行吧。

欢迎大家进入火星的世界。


<p class="title" id="hello-mars"></p>

## Hello Mars.

{% highlight d %}
import std.stdio;

void main()
{
  writeln("Hello Mars.");
}
{% endhighlight %}

来到火星，第一句想说的话就是“Hello Mars.”吧。（火星比较淡定，所以不用惊叹号）。
让我们先来学习一下，在火星文中，如何说出这句话：

1. 显然我们需要引入标准输出库。在C语言中，这是`#include <stdio.h>`。
而D语言去掉了宏和预处理机制，而是使用了更直观的**import**机制，这一点倒和Java有些相像。

1. 我们需要一个主函数，作为程序的入口。和C/C++类似，这里是`void main()`。（`int main()`也可以）

1. 来到戏肉了，我们要打印出"Hello Mars."，调用`writeln()`函数，它相当于C的`print()`，
不过多了一个打印换行符的操作。在其他语言里，比如Java/scala中，使用的是`println()`。
Walter之所以将这个函数取名叫*'write'*，
我猜是和他的名字有关（骗人的，其实是防止和core.c.printXX()系列函数重名吧）


**注意1**：如果您觉得宏和预处理还有其他功能这里没有提到，其实D也有更好更安全的解决方案。
总之D对宏和预处理做了一个完整的升级。  
**注意2**：writeXX()系列函数还有好几个比printXX()强大的地方，
不过那涉及比较高级的语言特性，今后再介绍。
现在只要把他看作更强大的printXX()就好。
writeXX()系列函数还有：write(), writeln(), writef(), writefln()等。


### 运行D程序

我们写好代码后，存入hello.d文件中。这时候如何运行呢？
这里介绍使用官方的编译器DMD的工具来运行D程序。

在DMD中，有一个rdmd命令，可以方便的编译和运行D语言程序。
您可以先参看[D语言构建工具的安装](posts/d-building#installation)，
安装好DMD之后，就可以在hello.d所在目录运行如下命令：

{% highlight bash %}
rdmd hello.d
{% endhighlight %}

输出果然如你所料：

{% highlight bash %}
Hello Mars.
{% endhighlight %}

就是这么简单。

**注意**: 当然，您也可以使用make等传统的构建工具，DMD的编译器命令是`dmd`。

关于其他编译工具的使用方法，可以参考[D语言构建工具](posts/d-building)。

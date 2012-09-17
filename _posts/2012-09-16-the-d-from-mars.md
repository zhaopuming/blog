---
layout: post
title: 来自火星的D语言
category: the-d-from-mars
tags: [D]
---

<p class="title" id="preface"></p>
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
我假设大家已经学过至少一门编程语言，对函数、模块、类等基本编程概念已经有所了解。

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

1. 导入`std.stdio`**模块**，里面包含了我们将要用到的`writeln`**函数**。
1. 写一个**main函数**： `void main() {...}`。
1. 调用标准输出函数：`writeln`，说出"Hello Mars"。

用更“技术”的语言来说，这个过程就是：

1. 我们需要引入标准输出库。在C语言中，这是`#include <stdio.h>`。
而D语言去掉了宏和预处理机制，而是使用了更直观的模块**import**机制，这一点倒和Java有些相像。

1. 我们需要一个主函数，作为程序的入口。和C/C++类似，这里是`void main()`。（`int main()`也可以）

1. 来到戏肉了，我们要打印出"Hello Mars."，调用的是`writeln()`函数。它相当于C的`print()`，
不过多了一个打印换行符的操作。在其他语言里，比如Java/scala中，使用的是`println()`。
Walter之所以将这个函数取名叫*'write'*，
我猜是和他的名字有关（骗人的，其实是防止和core.c.printXX()系列函数重名吧）


**注意1**：如果您觉得宏和预处理还有其他功能这里没有提到，其实D也有更好更安全的解决方案。
总之D对宏和预处理做了一个完整的升级。

**注意2**：writeXX()系列函数还有好几个比printXX()强大的地方，
不过那涉及比较高级的语言特性，今后再介绍。
现在只要把他看作更强大的printXX()就好。
writeXX()系列函数还有：write(), writeln(), writef(), writefln()等。


<p class="title" id="run-d"></p>
## 运行D语言程序

我们写好代码后，存入hello.d文件中。这时候如何运行呢？
这里介绍使用官方的编译器DMD的工具来运行D程序。

DMD提供了一个`rdmd`命令，可以方便的编译和运行D语言程序。
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

还有更可爱的方式：在第一行加上Bash运行符`#!/usr/bin/rdmd`：
{% highlight d %}
#!/usr/bin/rdmd
import std.stdio;

void main()
{
  writeln("Hello Mars.");
}
{% endhighlight %}

并且将文件的权限设置为可以运行：
{% highlight bash %}
chmod a+x hello.d
{% endhighlight %}

这样就可以把D语言的代码直接当作脚本来运行了：
{% highlight bash %}
./hello.d
{% endhighlight %}

由于DMD编译器的编译速度极快，又有缓存和增量编译功能，
所以用D语言来写类似与Python/Ruby的脚本，并不是超出想像的事情。
将来随着D语言标准库和其他工具库的丰富，相信会有这样一天到来：
我们的程序和脚本，用D来写都是及其方便的。

**注意**: 当然，您也可以使用make等传统的构建工具，DMD的编译器命令是`dmd`。

关于其他编译工具的使用方法，可以参考[D语言构建工具](posts/d-building)。


<p class="title" id="sum-up"></p>
## 小结

好了，现在大概你已经对D有基本的印象了：它有些像C/C++和Java的混合体。
没错，语法风格上，D并像Ruby,Go等新语言看起来那么Modern，反而似乎很传统，
但在这传统的外表之下，深深隐藏着D的创新之处。今后的章节中，慢慢可以发现这点。
现在，只要把D看作“更好的C++”即可。按照Walter的话：

> D is what C++ was supposed to be like.

`TODO`: source?

**注意**：如果你对D超越C/C++的语言特性有兴趣，想概览之，请参看[D语言的特性](posts/d-features)

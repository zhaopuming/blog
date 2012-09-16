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

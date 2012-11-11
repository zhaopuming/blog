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
int len = numbers.length; // 长度为4
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

1. 在D语言中，类似上面的切分操作，事实上是不需要重新分配空间拷贝数据的，
事实上x和y里只存储了指向heroes数组上的指针。所以效率很高。



**数组遍历**

{% highlight d %}
int[] a = [1, 2, 3];
// 遍历数组中的每一个元素
foreach (int n; a)
{
  writeln(a + 1); 
}

// 输出：
// 2
// 3
// 4


string[] words = ["I", "love", "you"];
// 第一个int型的参数是当前元素的数组下标
foreach (int i, string word; words)
{
  writeln(i ~ ":" ~ word);
}
// 输出：
// 1:I
// 2:love
// 3:you

{% endhighlight %} <!--[]()-->

D语言有独特的循环遍历语法：foreach语句。

Java和Python中也有类似的语法。这种foreach比传统的for循环更简介，并且因为不需要操作下标，不容易出错。

和其他语言不同的地方是，D语言的foreach语法还支持直接修改当前元素：
{% highlight d %}
string[] words = ["I", "love", "you"];
// ref关键字表示该变量是引用类型，因此可以直接修改
foreach (ref string word; words)
{
  if (word == "love") {
    word = "hate"
  }
}
writeln(words);

// 输出：["I", "hate", "you"];
{% endhighlight %} <!--[]()-->

这是一个简洁而高效的设计。事实上`ref`在很多地方（如函数参数列表）中，都有很好的作用。

另外，D也支持传统的for语句：

{% highlight d %}
int[] array = [1, 2, 3, 4, 5];
for (int i = 0; i < array.length; ++i)
{
  writeln(array[i]);
}
{% endhighlight %} <!--[]()-->


<br/>

## 关联数组(Associate Array)

关联数组，是key到value的映射的集合。 
这是一种非常常用的集合，以至于很多语言内置直接支持(Python, Javascript等)。
在Java/C#中，关联数组被称为Map(映射)。是通过类库来实现的。
D语言在这方面的选择更接近于动态语言，通过语言机制来直接支持关联数组。
在D语言环境中，关联数组常常简称为AA。

在D语言中，AA的形式和Javascript比较相似。

**AA的定义**

{% highlight d %}

int[string] heights = ["Michael Jordan" : 198, "Mount Everest" : 884800];

{% endhighlight %} <!--[]()-->

上面的代码定义了一个 `string -> int`的映射，表示事物与其高度的关联。
这里key是string字符串，比如"Michael Jordan"，value值是高度，比如198。

注意：heights这个AA的类型是 `int[string]`，可以这么理解：这是一个int型的值的集合，它的key的类型是string。

而这样的声明类型和AA的调用方式也是一致的:

{% highlight d %}
int height1 = heights["Michale Jordan"];
{% endhighlight %} <!--[]()-->

**AA的使用**

{% highlight d %}

// 取值：
int height2 = heights["Mont Everest"];


// 如果使用的Key不存在，则会抛出异常
int height3 = heights["Universe"]; // Error: Range Violation

// 安全取值：
int height4 = heights.get("MultiVers", 42); //  这里因为"Multiverse"这个key不存在，所以得到的是默认值42

// 增加新的key-value对
heights["Zhaopuming"] = 176; 


// 检查一个key是否在集合中存在：
if ("Michael Jordan" in heights)
{
  writeln("Good"); // prints "Good";
}

// 删除一对key-value
heights.remove("Zhaopuming");

// 遍历AA
foreach (string key, int val; heights)
{
  writeln(key, ":", val);
}

// 更传统的遍历方式 
string[] keys = heights.keys;
for (int i = 0; i < keys.length; ++i) 
{
  string key = keys[i];
  int height = heights[key];
  writeln(key, height);
}
{% endhighlight %} <!--[]()-->


<br />

## 一段小程序

有了函数、数组和AA，已经可以编写一些短小的程序了。

下面举一个例子：字数统计。这个程序读取一个文件，并统计其中出现的所有的词的次数，全部打印出来。


{% highlight d %}
#!/usr/bin/rdmd
// file：wc.d

import std.stdio;
import std.file;
import std.ascii;

int main (string[] args)
{
  int[string] dict;

  foreach (arg; args[1 .. $])
  {
    // 行数和词数
    int lines, words;

    // 直接获取字节数
    auto chars = std.file.getSize(arg);

    // 这里简单的把整个文件都读入到input这个字符串里
    // NOTE: 对于大文件，需要使用Buffer，这里就不考虑了
    auto input = cast(string) std.file.read(arg);

    // 每个词开始的位置
    size_t wstart;
    // 当前的字符是否在一个词之中
    bool inword;
    // 遍历所有的文本的字符，依次判断
    foreach (j, c; input)
    {
      // 如果遇到换行符，则将行数加一
      if (c == '\n') ++lines;
      // 如果遇到数字，则不做任何处理 
      if (isDigit(c))
      {
      }
      // 如果是字母，则：
      else if (isAlpha(c))
      {
        // 如果当前没有词，则新开一个词
        if (!inword)
        {
          wstart = j;
          inword = true;
          ++ words;
        }
      }
      // 如果遇到其他字符（空格、其他标点等），则结束当前的词，增加词的统计
      else if (inword)
      {
        auto word = input[wstart .. j];
        dict[word]++;
        inword = false;
      }
    }
    // 处理结尾部分
    if (inword)
    {
      auto w = input[wstart .. $];
      dict[w]++;
    }
    // 输出每个词的出现次数，按照词的字母顺序排列
    foreach (w; dict.keys.sort)
    {
      writefln("%3s %s", dict[w], w);
    }
    // 输出统计结果
    writeln("   lines   words   bytes    file");
    writefln("%8s%8s%8s%8s\n", lines, words, chars, arg);
  }
  return 0;
}
{% endhighlight %} <!--[]()-->


上面这个例子可以简单地统计一个文本中的词频。具体的实习方法可以参考里面的注释。
原理很简单：

1. 将整个文本读入到内存中，存在`input`这个字符串中。
1. 遍历`input`的每一个字符，如果遇到字母，则表示一个新的词开始了；如果遇到数字，则继续(如`a123`算作一个词)，如果遇到其他字符，则认为当前的词结束了。
1. 每当结束一个词的时候，将当前的词的统计加一。这个统计存放在`dict`里，类型为`int[string]`
1. 遍历结束后打印统计结果。

注意：这是很简单的实现示例，所以并不考虑大文件，也没有考虑其他字符（不支持中文）。

另外，代码中调用了一些标准库函数，他们是：

1. `std.file.getSize(filename)` 计算文件的字节数。属于`std.file`模块
1. `std.file.read` 读取文件的内容
1. `isDidgt(char)` 判断字符是不是数字；`isAlpha(char)`判断字符是不是字母；这两个函数都是std.ascii模块中。
1. `writefln()` 相当于C语言的printf，格式化地输出字符串。第一个参数可以提供输出的字符串的格式声明。来自std.stdio.

运行这段代码，直接在后面加上要统计的文件名即可，下面的例子是统计wc.d文件本身：

> ./wc.d wc.d

结果是：

{% highlight bash %}
  1 Buffer
  1 NOTE
  4 arg
  2 args
  1 ascii
  4 auto
  1 bin
  1 bool
  1 bytes
  4 c
  1 cast
  2 chars
  1 d
  5 dict
  2 else
  1 false
  5 file
  3 foreach
  1 getSize
  6 if
  3 import
  5 input
  3 int
  6 inword
  1 isAlpha
  1 isDigit
  3 j
  1 keys
  4 lines
  1 main
  2 n
  1 rdmd
  1 read
  1 return
  6 s
  1 size
  1 sort
  5 std
  1 stdio
  3 string
  1 t
  1 true
  1 usr
  5 w
  1 wc
  2 word
  4 words
  2 writefln
  1 writeln
  4 wstart
   lines   words   bytes    file
      72     119    1592    wc.d
{% endhighlight %}

可以看到`inword`这个词在wc.d中出现了6次


<br />

## 类



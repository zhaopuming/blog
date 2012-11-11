#!/usr/bin/rdmd
// file: wc.d

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

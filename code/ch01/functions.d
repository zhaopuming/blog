#!/usr/bin/rdmd
module ch1.functions;

import std.stdio;

/**
 * 普通函数
 */
int sum(int a, int b)
{
	return a + b;
}

/**
 * 代理函数
 */
int x = 10;
int sumFun(int a, int b)
{
	return x + a + b;
}

/**
 * 函数字面量
 */
auto sumLiteral = function int(int a, int b) { return a + b; };

/**
 * Lambda
 */
auto sumLambda = (int a, int b) => a + b;

void main()
{
	writeln(sumFun(10, 20));
	writeln(sumLambda(15, 16));
	writeln(sumLiteral(15, 16));
}

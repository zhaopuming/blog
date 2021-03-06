---
layout: post
title: 论高级工程师 | On Being A Senior Engineer
tags: Life
origin-link: http://www.kitchensoap.com/2012/10/25/on-being-a-senior-engineer/
---

`[翻译文章]` 原文链接：<http://www.kitchensoap.com/2012/10/25/on-being-a-senior-engineer/>

译注：在这篇文章里，“高级工程师”(Senior Engineer)一词，我觉得解释成“资深工程师”更恰当。

<br/>

我认为我们的领域(IT)已经积累大量的系统知识(institutional knowledge)，
尤其是关于如何成为一个高效的工程师的知识。

但虽然在管理学方向，不乏描述非技术领域的“专家”的角色和职责的好书，
我却并没有看到多少书籍或博文，直接探讨“什么是好的高级工程师”这个话题。
当然，[Kate matsudaira](http://katemats.com/)是一个显著的例外，
她最近发表了不少关于[工程的文化层面](http://katemats.com/leadership/)的话题。 

与此同时，我所认识的很多成功的工程师，都铭记着教会他何为“高级”工程师的导师们。

我100%同意友人Theo在他由O'Reilly出版的[网络管理](http://www.amazon.com/Web-Operations-Keeping-Data-Time/dp/1449377440)
一书中关于"高级"工程师的描述：

> "第X代（而第Y代更是如此)的文化是一种及时满足文化。与我共事过的同事中，很多人都认为他们的“职业路径”能在5年内
> 就将他们带到工程师群体的最高层次，仅仅因为他们聪明。但在我所见的大部分人中，这都是完全不可能的。
> 并不是每个人都能成长为高级工程师。如果五年后你就能成为高级工程师，那你是否已经成为行业顶尖了？
> 那么再过五年，你是否会积累更珍贵的经验？那时候怎么办？“超级工程师”？再过五年呢？“宇宙级工程师”？
> 我认为这中普遍的误解是由于我们这个行业本身还太年轻。
> 真实情况是在网络管理这个行业里，只有非常少的工程师工作超过15年。
> 而且由于我们这个行业的活动性，很多人中途就转行走上管理职位或者冒险创业了。

他是对的：网络管理这个行业还非常年轻。所以当看到拥有“高级工程师”头衔的人展现出各种不成熟的表现时，不必惊奇。
如果你还没有读过Theo的书，我建议你抽时间读读。


既然如此，那么在我们的领域中，到底什么样才算是“高级”工程师？ 
我的职位就是专门招聘、支持和挽留高级工程师，所以对此有自己的见解。
通常的看法是职业发展中有一道门槛，跨过去才能成为高级工程师。
这样的看法不错，但我还得附加一个说明：这些门槛并不是一堆打勾检验，而是综合而模糊的界限。
你不可能某天一觉醒来就突然变成“高级工程师”了；也不可能因为职位提升获得新的头衔就成为高级工程师。
高级工程师并不是万知万能，他们的技术知识也不是十全十美，并且他们知道这一点。

为了不将标题和这模糊的目标混淆，我接下来谈到“高级工程师”时，有时会用“工程**成熟度**”这个词来描述。

意即：我期望一个“高级”工程师应该是一个*成熟*的工程师。

我会略过对一个成熟工程师应当掌握理解的技术领域的简单枚举（诸如“网络”，“文件系统”，“算法”等等），
而是将焦点聚集在个人特征上：哪些特征会提示一个人可以在工程领域给公司或业务带来积极影响。


在Quora上，有人问过我[“成为一个伟大的技术公司的VP需要那些特质(除了技术能力和经验之外)?”](http://www.quora.com/John-Allspaw-What-are-the-attributes-other-than-technical-ability-experience-that-make-a-great-VP-of-Technical-Operations)。
我在回答中列出的特质，都是来自于我自己永恒的祈愿。本文和那个答案在这方面是类似的。

首先我需要强调，网络开发和运营行业的高级工程师，和其他领域的工程师（机械工程、电子工程、化学工程等），
实际上需要有相同的特性，这些特性在[工程密则(The Unwritten Laws of Engineering)](http://www.amazon.com/Unwritten-Laws-Engineering-Revised-Updated/dp/0791801624)
一书中有所描述。当然，如果你没有看过这本书，强烈推荐。它写于1944年，由[没过机械工程协会](http://www.asme.org/)
出版。[这里](http://www.kitchensoap.com/2012/08/07/human-factors-and-web-engineerings-intersection/)有本书的一段很好的摘要。

虽然这本书的组织结构和文风有些过时感（“...克制在工作场合使用不敬的语言...”，“...人们应当着重注意刮胡子和修剪鬓角的习惯...”），
但确实概述了在工程组织中对人的非技术的期望、职责以及内因，并同时阐述了经理和成熟的工程师应当如何行事。


### 成熟的工程师必需有的特性

所有想要尝试描述理想的特性的文章，都不免于会列举过多的特性点，而工程领域里也不少。
所以，下面我只能列举其中的一些，有的是我的观点，有的是由其他来源而来，很多是从上面提到的**密则**一书而来。

**成熟的工程师会主动搜寻对他们的设计的建设性批评。**

我遇见过的每一个成功的工程师，在完成设计或者准备好一个项目时，都会持续咨询他们的同事如下问题：

- <!--a-->
“有没有漏掉什么？”
- <!--b-->
“这个设计有没有可能*无法正常工作*？”
- <!--c-->
“你能不能尽可能多挑一些我的思考中的毛病？”
- <!--d-->
“即使这样从技术上来说很完善，对公司的其他部门来说，是不是足清晰可理解？是不是便于运行、查错和扩展？”

这是因为他知道他设计的任何东西都不可能只经他一人之手掌握，也知道良好的互评估会带来更完善的设计。
在别处也说过，他们“乞求坏消息”。

**成熟的工程师明了他们在非技术方面上是被如何看待的。**

能够使用Erlang写出Bloom Filter，或者睡觉时编写多线程C程序，这些并不够。如果没有人愿意和你合作，多么高超的技巧都没用。
成熟的工程师知道：无论他们的设计多么完备、优雅或强大，如果同事们因为认为他是[混蛋](http://www.amazon.com/The-Asshole-Rule-Civilized-Workplace/dp/0446526568)而都不愿意合作，任何用处都没有。
傲慢、轻视、自恋和自我膨胀的行为都会导致其他工程师的远离。
在工程行业里，工作的幸福，很大一部分来自于在设计和制造产品的同事，享受和同事们一起奋斗的乐趣。
轻易骂人笨蛋的工程师是无法在职业道路上走远的。

这也意味着成熟工程师在交流时有很清晰的自我判定意识。这并不是说每个成熟的工程师都有完美的沟通能力，
只是说他们知道如何能让事情变得更好，并且持续地请求同事和经理的评审。他们希望中肯，而不是被动或者强求地实现他们的想法。

我在[其他地方]()提到过，但必须再强调一下：其他人愿意和你合作的程度，直接揭示了你未来作为工程师
职业发展的潜力。请成为大家都喜欢与你共事的工程师。

当然，这并不是说你应该回避对其他工程师的**工作**（而不是他的个人本身）的建设性批评，以避免被招人恼怒。
骂人蠢蛋和指出他们代码中的错误是完全不同的两码事。在和Theo的交谈中，他提出了另外一个我们领域应该
更加成长的地方：

>  “我们这个行业，应当克制对人的性格和身份的批评，但不应该放松对产品的批评。
>  我们需要更厚的脸皮以接受批评，并尝试滤掉了个人色彩。
>
>  确实会存在笨蛋，而且应该避开他们。但是那种认为一个人的代码就是他的孩子的态度应该结束了。
>  代码并没有感觉，不会产生情绪，并且当然不会展现出人类最重要的特质：自我繁殖。”


另外可以参考[《无我编程十诫》](http://www.codinghorror.com/blog/2006/05/the-ten-commandments-of-egoless-programming.html)的第2条和第10条。

我觉得这也是《密则》一书中的一个推论(加粗的的语句是我的)：

>  当牵涉到其他部门的时候，请小心你在信件副本、备忘上面评论人的话。
>
>  很多伤害都是因为年轻人导致的，**他们会随意传播包含中伤和窘迫内容的备忘和信件**。
>  当然新手们很可能看不出来这些文件中的“潜在炸弹”，但如果内容重重踩了某人的脚趾，或者
>  揭露了某些人的严重缺点，则非常容易带来麻烦。如果新建会传播很广，或者牵涉到制造或客户服务的问题，
>  你最好先获得老板的批准再发信，除非你非常确定自己的境况。

当然，这段话和这本书一样，读来颇有古意。但即使在当代，我仍然认为其中的主要观点是正确的。
没有比未经深思熟虑就随意喷出恶言侮语的毫无建设性的微博更能显示出你缺乏设身处地的思维和知觉了。
140字就想辱骂一种复杂的技术，是只有初级工程师才会犯的错误。


我当然([和Christopher Brown在他的Velocity London会议上的演讲中提到的一样](http://www.youtube.com/watch?v=veumR8l07uc))
会在浏览微博时注意人们的公开言论，并依此重新考虑他们是否适合招聘来在Etsy工作。


**成熟工程师不会回避进度预估，并且总是会尝试做得更好。**


摘自*密则*：

> 良好的业务，离不开承诺、计划和预估这些必需且重要的工具。
> 很多工程师都没有意识到这一点，或者会习惯性地尝试躲避做出承诺，因为觉得这是恼人的责任。
> 对于你负责的相关工作，必须根据自己的估计来做出承诺，并参考相关部门对他们的相关工作的估计。
> **任何人都不能用“我不能做出保证，因为不确定的因素太多了”这样的陈辞滥调来回避这个问题。**

回避做出估计的责任其实就是换一种说法来说：“我还没有准备好承担业务的关键部分的责任”。
所有的业务都依赖于预估，所有参与某个项目的工程师都牵涉到这个[联合行动](http://www.kitchensoap.com/2012/03/30/the-devils-in-the-details/)中，
也就意味着他们对其他人也有责任，需要让大家都可以互相可预期。
总而言之，成熟工程师应该乐于对应一定程度的风险和未知。

**成熟工程师有种与生俱来的预感，即使他们并不自知**

这段代码看起来很好，我为自己感到自豪。我已经请人进行过代码复查，
并得到了反馈信息。现在：在下次重写前它能坚持多久？一旦上线正式运行，
它会如何影响线上资源的使用？CPU/内存/磁盘/网络等资源会有什么变化？
其他人能理解这段代码吗？我是否已经足够努力使得它易于扩展或研究？

**成熟工程师懂得并不是所有的工作内容都是星光闪耀的**

> 不管你的任务看起来多么卑微和琐屑，都应当用尽全力。

完成任务意味着你必须做一些并不感兴趣的工作。
不管一个工程多么“性感”，总会有无聊的内容。
不成熟的工程师会觉得这些工作不符合他们的身份尊严。
我的好友Kellan Elliot-McCrea(Etsy的CTO)对此有所见解：

> “有时候繁杂任务的可去之处在于他们的简易性和成熟性， 因此可以快速完成继续前进。
> 有时候任务之所以繁杂，正式因为它需要严格的纪律和不懈的专注。
> 出人意料的是，往往最繁杂的任务，却是最恐怖的，只有最资深的工程师才能完成。

**成熟工程师能让周围的人进步。**

他们意识到，到了某个时候，他们自己的贡献和潜能不能限于己身。
他们知道一个人的产出是有限的，而世界上最好的工程学成就都是由*团队*完成，
而不是某一个杰出而孤独的工程师。Tom Limoncelli的[文章](http://everythingsysadmin.com/2012/09/seniorsysadmins.html)
中对此有完尽的阐述。

在Etsy我们称这个现象为“精神的慷慨”。精神的慷慨是我们的核心工程价值，
而也是我们的*主管工程师*的主要职责。主管工程师是我们公司职业级别的一级。
这些工程师花费时间精力保证更年轻或新来的工程师懂得我们的技术和流程，
并不止是要懂得他们在做什么，而要懂得*为什么*要那么做。
“授人以渔”是这个职位层次的必须技能，它需要耐心和洞察，并投入优化整个组织。

所以，与其“OK，挪开一下，让我帮你搞定”，应当“Ok，我们一起来解决它。
我可以给你演示一下如何编写/查错/等等。然后你来做一遍，这样我才能确知你已经
明白为什么我们要这么做了。”

*相关话题：参考下面关于如何获取信任的话题。*

**成熟工程师在做出判断和决策时，会明确地列出舍取的因素。**

他们明白，所有的工程决策、实现和设计都不是一刀切的；我们并不是生活在二元的世界。
他们可以很快地指出一个成功的方案在哪些场景适用，哪些不适用。
他们知道想同时保证*效率*和*完善*是不可能的（[ETTO原理](http://www.namahn.com/resources/interview/erik-hollnagel-birds-do-it))，
大部分的项目都由**优化度**和**脆弱度**两个维度组成。
他们也知道所解决的问题是*急性*的还是*慢性*的。

他们知道工作的理想和现实的边界不明，并且对此表示OK。
他们会对此适应，因为在设计中会明确区分哪些部分是理想的，哪些是不完美的。
在接下来的设计周期中，当原始的设计已经不能再适应增长的需求而需要替换或重写时，
他们不会回头看时发现当时的设计是多么地短视，不会使用愤怒、
[被动攻击](http://talkingshrimp.com/ways-be-passive-aggressive-essential-pocket-guide)
、事后之明的反语（比如，“那些笨蛋最开始就没弄对！”，“他们偷工减料了！”，“我早就说过这样做是不行的！”），
而是会说： “是的，我们已经成功走了这么远，当初也预知在某个时刻需要扩展或修改它。
看来这个时刻就是现在了，我们开始工作吧！”。

关于这种取舍的话题，有很多精妙的言论。而成熟工程师知道任何哲意浓浓的引言，都有其极限（包括我下面写到的）：

* “过早的优化是万恶的根源” —— 这句话已经被过度滥用，而我以前谈过[这个话题](http://www.kitchensoap.com/2008/08/24/everything-isnt-about-the-knuth-quote/)。
这句话的一个推论（从[这里](http://omniti.com/seeds/dissecting-todays-internet-traffic-spikes)得来）是
“懂得什么是‘过早’的优化，是区分一个工程师是否成熟的标志”。

* “使用合适的工具完成工作”(Right tool for the job) —— 另一句滥用的话。这句话的本意很合理：谁会想使用不合适的工具？
但很少有人想到这句话推向极端时会带来坏处。木匠不会为自己准备所有尺寸和类别的锤子，
即使精确合适的锤子会更有利于工作。为什么？因为随身携带（并维护）这么多锤子需要很多代价和花费。
同理于此，关于工具的维度，也是需要舍取的。

有关舍取的话题，简言之，所有人，在所有工程中，都会偷工减料。
不成熟的工程师往往事后才发现，并被恶心到。而成熟的工程师则会在工程开始时就预见它们，
接受他们，并把它们认做是一个良好工程设计的一部分。

(相关文章：[“你的代码也许很优雅，但我的代码TMD可以运行！”](http://omniti.com/seeds/your-code-may-be-elegant)


**成熟工程师不会只扫门前雪**

若是一个工程师拘于礼节而不去接触了解他的代码如何和系统或者业务的其他部分联通，那么总会是注定失败。
[“只管管好你自己”](http://en.wikipedia.org/wiki/Cover_your_ass)会发出隐藏的信息，说明你是
一旦遇到问题，就会找别人（你们团队的？你们公司的？你们社区的）做替罪羊的类型。
成熟的工程师会站直了接受交给他们的责任。如果他们没有足够的权限去掌控工作的风险，则会想办法更正。

只扫门前雪的一个例子是：“这不是我的错。他们弄坏了，他们使用错了。我按照协议标准实现了，
所以他们没做对产生的后果不应该算到我头上。”

**成熟工程师有同情心**





TBC










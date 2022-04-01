//
//  Post.swift
//  MovieBanner
//
//  Created by 张亚飞 on 2022/4/1.
//

import SwiftUI

struct Post: Identifiable {
    
    var id = UUID().uuidString
    var postImg: String
    var titile: String
    var description: String
    var starRating: Int
}

var posts = [

    Post(postImg: "p1", titile: "title 1", description: "Swift是一款易学易用的编程语言，而且它还是第一套具有与脚本语言同样的表现力和趣味性的系统编程语言。Swift的设计以安全为出发点，以避免各种常见的编程错误类别。", starRating: 4),
    
    Post(postImg: "p2", titile: "title 2123", description: "Swift是一种新的编程语言，用于编写iOS和macOS应用。Swift结合了C和Objective-C的优点并且不受C兼容性的限制。Swift采用安全的编程模式并添加了很多新特性，这将使编程更简单，更灵活，也更有趣。Swift是基于成熟而且倍受喜爱的Cocoa和Cocoa Touch框架，他的降临将重新定义软件开发。", starRating: 3),
    
    Post(postImg: "p3", titile: "title 4412", description: "Objective-C开发者对Swift并不会感到陌生。它采用了Objective-C的命名参数以及动态对象模型，可以无缝对接到现有的Cocoa框架，并且可以兼容Objective-C代码。在此基础之上，Swift还有许多新特性并且支持过程式编程和面向对象编程。", starRating: 5),
    
    Post(postImg: "p4", titile: "title 1231551", description: "Swift 对于初学者来说也很友好。它是第一个既满足工业标准又像脚本语言一样充满表现力和趣味的编程语言。它支持代码预览，这个革命性的特性可以允许程序员在不编译和运行应用程序的前提下运行Swift代码并实时查看结果。", starRating: 3),
    
    Post(postImg: "p5", titile: "title 1111", description: "Swift不需要引入头文件或写在main()内，也不需要在每一句加上分号(当然，若你保有使用某些其他语言的习惯，如Java、C等 加上分号结尾亦不会报错)。", starRating: 2),
    
    Post(postImg: "p6", titile: "title 668651", description: "Swift是编程语言的最新研究成果，并结合数十年的经验建设苹果平台的结果。结转自Objective-C的命名参数表示在一个干净的语法，使得Swift的API更容易阅读和维护。", starRating: 5),
    
    Post(postImg: "p7", titile: "title 111", description: "推断类型使代码更干净，不易犯错误，而模块消除了头，并提供命名空间。内存自动管理，而你甚至都不需要输入分号。", starRating: 4)
    
]

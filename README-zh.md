# PSWeakProxy [中文]

[![docs][docs]][CocoaPods] 
[![Pod Version][version]][CocoaPods] 
[![License][license]][CocoaPods] 
[![Platform][platform]][CocoaPods] 
![SwiftCompatible]

一个简单的组件，用于解决某些情况下的引用循环问题。

---

### 走起

#### CocoaPods 导入

在 podfile 里面加入👇

```ruby
pod 'PSWeakProxy'
```

### 使用

简单易用，直接上代码。

```objc
PSWeakProxy *weakSelf = [[PSWeakProxy alloc] initWithObject:self];
self.timer = [NSTimer scheduledTimerWithTimeInterval:1.0
                                            target:weakSelf
                                                selector:@selector(timeIsPassing:)
                                                userInfo:[NSDate date]
                                                 repeats:YES];
```




[CocoaPods]: http://cocoapods.org/pods/PSWeakProxy

[docs]: https://img.shields.io/cocoapods/metrics/doc-percent/PSWeakProxy.svg

[version]: https://img.shields.io/cocoapods/v/PSWeakProxy.svg?style=flat

[license]: https://img.shields.io/cocoapods/l/PSWeakProxy.svg?style=flat

[platform]: https://img.shields.io/cocoapods/p/PSWeakProxy.svg?style=flat

[SwiftCompatible]: https://img.shields.io/badge/Swift-compatible-orange.svg

[blog]: http://shengpan.net


[中文]: #


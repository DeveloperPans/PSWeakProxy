# PSWeakProxy [中文]

[![docs][docs]][CocoaPods] 
[![Pod Version][version]][CocoaPods] 
[![License][license]][CocoaPods] 
[![Platform][platform]][CocoaPods] 
![SwiftCompatible]

A proxy for resolve retain cycle,such as NSTimer etc.

---

### Getting Start

#### Installation with CocoaPods

add follow line into your podfile:

```ruby
pod 'PSWeakProxy'
```

### Usage

Talk is cheap,this is simple code.

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


[中文]: /README-zh.md


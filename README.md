# HTMLBudouX.swift

HTMLBudouX.swift is a support library of [BudouX.swift](https://github.com/griffin-stewie/BudouX.swift) to handle HTML.

[Detail about BudouX.swift is here](https://github.com/griffin-stewie/BudouX.swift) 

## Usage

You can translate an HTML string by wrapping phrases with non-breaking markup.

```swift
import BudouX
import HTMLBudouX
// Load Default Japanese Parser
let parser = Parser()
// Parse
print(parser.translateHTMLString(html: "今日は<b>とても天気</b>です。"))
// <span style="word-break: keep-all; overflow-wrap: break-word;">今日は<b><wbr>とても<wbr>天気</b>です。</span>
```

## Install

Support Swift Package Manager only. There are no plans to support other package management tools at this time.

```swift
package.append(
    .package(url: "https://github.com/griffin-stewie/HTMLBudouX.swift", from: "0.1.0")
)

package.targets.append(
    .target(name: "Foo", dependencies: [
        .productItem(name: "HTMLBudouX", package: "HTMLBudouX.swift")
    ])
)
```

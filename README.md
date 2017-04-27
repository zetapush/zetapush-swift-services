# ZetaPushSwiftServices

[![Version](https://img.shields.io/cocoapods/v/ZetaPushSwiftServices.svg?style=flat)](http://cocoapods.org/pods/ZetaPushSwiftServices)
[![License](https://img.shields.io/cocoapods/l/ZetaPushSwiftServices.svg?style=flat)](http://cocoapods.org/pods/ZetaPushSwiftServices)
[![Platform](https://img.shields.io/cocoapods/p/ZetaPushSwiftServices.svg?style=flat)](http://cocoapods.org/pods/ZetaPushSwiftServices)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

ZetaPushSwiftServices must be run with ZetaPushSwift pod.

## Installation

ZetaPushSwiftServices is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "ZetaPushSwiftServices"
```
## Usage

This repository gives you the auto-generated code to use ZetaPush services. A ZetaPush service as listed in the [reference site](https://ref.zpush.io/) is a technical service available on ZetaPush' Cloud. This service can be used in your Swift code.

For each service, we provide:
* a Publish class with every ZetaPush services verb available as a method
* a Listener class that you MUST override with every ZetaPush services output available as a method to override
* every structures needed to call or to receive data from ZetaPush


Please refer to the [ZetaPushSwift repository](https://github.com/zetapush/zetapush-swift) to learn the basics of ZetaPush connection with Swift. We will enhance the basic connection example to use ZetaPushSwiftServices

```swift
import UIKit
import ZetaPushSwift
// Import the new Pod
import ZetaPushSwiftServices

// Override the StackListener class
class MyStackListener: StackListener{
    // Override the on_list function
    public override func on_list(_ data: StackListResponse) {
        print("MyStackListener onList", data)
    }
    // Override the on_push function
    public override func on_push(_ data: StackItemAdd) {
        // Here, we will receive all call result to the push verb for my Stack service
        print("MyStackListener onPush", data)
    }
}

class ViewController: UIViewController {

    let zetaPushWeakClient:ZetaPushWeakClient = ZetaPushWeakClient(sandboxId: "YOUR_SANDBOX_ID", weakDeploymentId: "YOUR_WEAK_DEPLOYMENT_ID")

    // declare your service publisher: here, we use a StackPublisher for the Stack Service (https://ref.zpush.io/#it_stack)
    var stackPublisher: StackPublisher?

    // declare my service listener
    var stackListener: MyStackListener?
    override func viewDidLoad() {
        super.viewDidLoad()

        zetaPushWeakClient.onSuccessfulHandshake = onSuccessfulHandshake

        // Create the StackPublisher 
        stackPublisher = StackPublisher(zetaPushWeakClient, deploymentId:"YOUR_STACK_SERVICE_DEPLOYMENT_ID")

        // Create the StackListener
        stackListener = MyStackListener(zetaPushWeakClient, deploymentId:"YOUR_STACK_SERVICE_DEPLOYMENT_ID")

        // Connect to ZetaPush
        zetaPushWeakClient.connect()
    }

    func onSuccessfulHandshake(_ client:ClientHelper){
        // The connection to ZetaPush is a success
        print("ViewController SuccessfulHandshake")
    }

    @IBAction func OnMyFirstTestDown(_ sender: Any) {

        // Create a stackItemAdd object
        let dataStack = ["message":"Hello World"]
        let stackItemAdd = StackItemAdd(json: ["stack": "myGreatStackName", "data": dataStack])

        // Call the push method to call the "push" verb of the stack Service
        stackPublisher?.push(parameter: stackItemAdd!)
    }
}

```
That' all! It really easy to call ZetaPush services with predifined Publishers and Listeners

## Author

Morvan Mikael, morvan@zetapush.com

## License

ZetaPushSwiftServices is available under the MIT license. See the LICENSE file for more info.

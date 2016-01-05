# StackPageView
Vertical page view with UIViewControllers stacked on the top of each other

![](https://raw.githubusercontent.com/noppefoxwolf/StackPageView/master/sample.gif)

# Intstall
add StackPageView.swift your project.

# How to Use

```swift
class ViewController: UIViewController,StackViewDataSource {

    @IBOutlet weak var stackPageView: StackPageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        stackPageView.dataSource = self
        stackPageView.parentViewController = self
    }

    func stackViewNext(currentViewController: UIViewController?) -> UIViewController {
        return DummyViewController()
    }
    
    func stackViewPrev(currentViewController: UIViewController?) -> UIViewController {
        return DummyViewController()
    }

}
```

#Support
Support with initWithFrame and Storyboard.

#LICENSE
MIT

# MVPC-Swift-Templates
__MVP (Model View Presenter Coordinator)__ generator which consists of:
* `View` 

```swift
class LoginVC: UIViewController {
    
    static let identifier = ""
    var presenter: LoginPresentation!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    class func create() -> LoginVC {
      
    }
}

extension LoginVC: LoginViewInterface {

}
```

* `Presenter`
```swift
class LoginPresenter {
    
    weak var delegate: LoginSceneDelegate?
    weak var view: LoginViewInterface!
    // let service:

    init(view: LoginViewInterface /*, service: */) {
        self.view = view
        //self.service = service
    }
    
}

extension LoginPresenter: LoginPresentation {
    
}
```

* `Configurator`
```swift
class LoginConfigurator {

    func create(delegate: LoginSceneDelegate?) -> LoginVC {
        
        let controller = LoginVC.create()
        let presenter = LoginPresenter(view: controller)
        presenter.delegate = delegate
        controller.presenter = presenter
        return controller
    }
}
```

* `Contract`
```swift
// MARK: Presenter comunication
protocol LoginPresentation: class {

}

// MARK: Interface performance
protocol LoginViewInterface: class {
   
}

// MARK: Navigation
protocol LoginSceneDelegate: class {
    
}

```

# Installation

To install MVP Swift Xcode templates, run:
```
make install
```
To uninstall MVP Swift Xcode templates, run:
```
make uninstall
```

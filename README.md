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
__Coordinator:

* `Main Coordinator`
```swift
class MainCoordinator {

    var navigationController: UINavigationController

    init(with navigation: UINavigationController) {
        self.navigationController = navigation
    }

    func start() {}
    
}
```

* `Your Coordinator`
```swift
final class LoginCoordinator: MainCoordinator {

    var currentController: LoginVC?
    
    override init(with navigation: UINavigationController) {
        super.init(with: navigation)
        currentController = LoginConfigurator().create(delegate: self)
    }

    override func start() {
        navigationController.pushViewController(currentController ?? UIViewController(), animated: true)
    }
}

extension LoginCoordinator: LoginSceneDelegate {

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

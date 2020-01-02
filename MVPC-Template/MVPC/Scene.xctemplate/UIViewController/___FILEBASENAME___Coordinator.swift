//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

final class ___VARIABLE_sceneName___Coordinator/*: MainCoordinator*/ {
    
    var currentController: ___VARIABLE_sceneName___VC?
    
    override init(with navigation: UINavigationController) {
        super.init(with: navigation)
        currentController = ___VARIABLE_sceneName___Configurator().create(delegate: self)
    }
    
    override func start() {
        navigationController.pushViewController(currentController ?? UIViewController(), animated: true)
    }
    
}

extension ___VARIABLE_sceneName___Coordinator: ___VARIABLE_sceneName___SceneDelegate {
    
}

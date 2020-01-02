//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

class ___VARIABLE_sceneName___Configurator {

    func create(delegate: ___VARIABLE_sceneName___SceneDelegate?) -> ___VARIABLE_sceneName___VC {
        
        let controller = ___VARIABLE_sceneName___VC.create()
        let presenter = ___VARIABLE_sceneName___Presenter(view: controller)
        presenter.delegate = delegate
        controller.presenter = presenter
        return controller
    }
}

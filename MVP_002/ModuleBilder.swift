//
//  ModuleBilder.swift
//  MVP_002
//
//  Created by Nikita Shestakov on 16.11.2023.
//

import UIKit

// сборщик
protocol Builder {
   static func createMainModule() -> UIViewController
}

class ModelBuilder: Builder {
    static func createMainModule() -> UIViewController {
        // внедрение зависимостей
        // создаются не внутри сущностей, а снаружи
        // делаем инъекцию извне
        let model = Person(firstname: "David", lastName: "Bel")
        let view = ViewController()
        let presenter = MainPresenter(view: view, person: model)//инжект снаружи для возможности тестирования
        // и SOLID так говорит
        view.presenter = presenter
        return view
    }
    
    
}

//
//  MainPresentor.swift
//  MVP_002
//
//  Created by Nikita Shestakov on 16.11.2023.
//

import Foundation
// типо абстрактное view
//output protocol
protocol MainViewProtocol: AnyObject { // class - для слабой ссылки
    func setGreeting(greeting: String) // метод отправки сообщений к View
}
//input protocol
protocol MainViewPresenterProtocol: AnyObject {
    init(view: MainViewProtocol, person: Person)// инициализотоор для захвата ссылки на view
    func showGreeting()
}

class MainPresenter: MainViewPresenterProtocol {
    let view: MainViewProtocol
    let person: Person
    // по сути для управления View и model
    
    required init(view: MainViewProtocol, person: Person) {
        self.view = view
        self.person = person
    }
    
    func showGreeting() {
        // бизнес логика при нажатии на экран
        let greetin = self.person.firstname + " " + self.person.lastName
        self.view.setGreeting(greeting: greetin)
    }
}

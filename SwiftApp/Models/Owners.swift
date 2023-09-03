//
//  Owners.swift
//  SwiftApp
//
//  Created by Семен Выдрин on 03.09.2023.
//

struct Owners {
    let name: String
    let defenition: String
    let photo: String
    
    func getOwnersInfo() -> [Owners] {
        [
            Owners(
                name: "Илья",
                defenition: "Я настроил бизнес логику приложения.",
                photo: "photoIlya"
            ),
            Owners(
                name: "Семён",
                defenition: "Я создал все экраны и настроил элементы интерфейса.",
                photo: "photoSemen"
            ),
            Owners(
                name: "Геник",
                defenition: "Я талисман команды.",
                photo: "photoGenik"
            )
        ]
    }
}

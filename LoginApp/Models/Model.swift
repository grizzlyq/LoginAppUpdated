//
//  Model.swift
//  LoginApp
//
//  Created by Дмитрий on 09.11.2022.
//


struct User {
    let username: String
    let password: String
    let person: Person
    let shortStory: String
}

struct Person {
    let firstName, secondName, company, group, position: String
    let age: Int
}







extension User {
    static func getUserInfo() -> User {
        User(username: "IosDev", password: "qwer",
             person: Person(
                firstName: "Dima",
                secondName: "Svistov",
                company: "Unicorns Of Love",
                group: "Cybersport",
                position: "Player",
                age: 27),
                shortStory: "Дмитрий 'GrizzlyQ' Свистов. Киберспортсмен со стажем. Начинал свою карьеру в далеком в 2015году с дисциплины Heroes of The storm. После перешел в Arena Of Valor и стал единственным трехкратным чемпионом Европы. Объездил огромное количество стран и побывал почти на всех материках нашей земли. На данный момент выступают за команду Unicorns of Love в дисциплине League of Legends: wild rift. Сейчас он учится кодить вместе со Swiftbook с классным преподавателем Анной, и двумя наставниками Артемом и Евгением! 😇" )
    }
}




//
//  AdvancedViewModel.swift
//  RxDataSourcesDemo
//
//  Created by 이아연 on 2021/05/20.
//

import RxSwift

struct AdvancedViewModel {
    
    let dataSource = AdvancedDataSource.dataSource()
    
    let sectionItems = BehaviorSubject<[AdvancedSectionModel]>(value:[
        
        .TopSection(sectionTitle: "TopSection", content: [
            .Top([
                AdvancedTopModel(title: "ONE", desc: "HellowOne!", url : "https://images.unsplash.com/photo-1621250755389-37ba6d72f969?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwzfHx8ZW58MHx8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60"),
                AdvancedTopModel(title: "TWO", desc: "HellowOne!", url : "https://images.unsplash.com/photo-1621243545870-12844cab725e?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxM3x8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60"),
                AdvancedTopModel(title: "THREE", desc: "HellowOne!", url : "https://images.unsplash.com/photo-1593642532871-8b12e02d091c?ixid=MnwxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHwxNnx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60"),
                AdvancedTopModel(title: "FOUR", desc: "HellowOne!", url : "https://images.unsplash.com/photo-1621265589322-4c409cb458da?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80"),
                AdvancedTopModel(title: "FIVE", desc: "HellowOne!", url : "https://images.unsplash.com/photo-1621267192123-1e91a88c598b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=934&q=80")
            ])
        ]),

        .FirstSection(sectionTitle: "FirstSection", content: [
            .First(AdvancedFirstModel(title : "ONE", desc: "This is ONE of FirstSection")),
            .First(AdvancedFirstModel(title : "TWO", desc: "This is TWO of FirstSection")),
            .First(AdvancedFirstModel(title : "THREE", desc: "This is THREE of FirstSection")),
            .First(AdvancedFirstModel(title : "FOUR", desc: "This is FOUR of FirstSection")),
        ]),
        
        .SecondSection(sectionTitle: "SecondSection", content: [
            .Second(AdvancedSecondModel(title: "ONE", desc: "SecondONE", url: "https://images.unsplash.com/photo-1621264872587-10025d13a1a6?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1623&q=80", isChecked: false)),
            .Second(AdvancedSecondModel(title: "TWO", desc: "SecondONE", url: "https://images.unsplash.com/photo-1585399000684-d2f72660f092?ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1951&q=80", isChecked: true)),
            .Second(AdvancedSecondModel(title: "THREE", desc: "SecondONE", url:"https://images.unsplash.com/photo-1621193732872-afb661bf6c3f?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80", isChecked: true)),
        ])
    ])
}

struct AdvancedTopViewModel {
    let list = BehaviorSubject<[AdvancedTopModel]>(value : [])
    
    init(data : [AdvancedTopModel]) {
        self.list.onNext(data)
    }
}

struct AdvancedFirstViewModel {
    var title : String
    var desc : String
    
    init(data : AdvancedFirstModel) {
        self.title = data.title
        self.desc = data.desc
    }
}

struct AdvancedSecondViewModel {
    var title : String
    var desc : String
    var url : String
    var isChecked : Bool
    
    init(data : AdvancedSecondModel) {
        self.title = data.title
        self.desc = data.desc
        self.url = data.url
        self.isChecked = data.isChecked
    }
}

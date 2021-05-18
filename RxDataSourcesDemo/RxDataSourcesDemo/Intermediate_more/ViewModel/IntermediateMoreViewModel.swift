//
//  IntermediateMoreViewModel.swift
//  RxDataSourcesDemo
//
//  Created by 이아연 on 2021/05/18.
//

import RxSwift

struct IntermediateMoreViewModel {
    let dataSource = IntermediateMoreDataSource.dataSource()
    let sections = Observable<[IntermediateMoreSectionModel]>.just([
        .FirstSection(content : [
            .First(InterFirstModel(title: "one", desc: "This is First Item")),
            .First(InterFirstModel(title: "two", desc: "This is First Item")),
            .First(InterFirstModel(title: "three", desc: "This is First Item")),
            .First(InterFirstModel(title: "four", desc: "This is First Item")),
            .First(InterFirstModel(title: "five", desc: "This is First Item")),
            .First(InterFirstModel(title: "six", desc: "This is First Item")),
            .First(InterFirstModel(title: "seven", desc: "This is First Item"))
        ]),
    
        .SecondSection(content : [
            .Second(InterSecondModel(title: "one", desc: "This is Second Item", url :  "https://images.unsplash.com/photo-1621250755389-37ba6d72f969?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwzfHx8ZW58MHx8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")),
            .Second(InterSecondModel(title: "two", desc: "This is Second Item", url : "https://images.unsplash.com/photo-1621196811441-682f5298fbb5?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw3fHx8ZW58MHx8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")),
            .Second(InterSecondModel(title: "three", desc: "This is Second Item", url :"https://images.unsplash.com/photo-1621243545870-12844cab725e?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxM3x8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")),
            .Second(InterSecondModel(title: "four", desc: "This is Second Item", url : "https://images.unsplash.com/photo-1593642532871-8b12e02d091c?ixid=MnwxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHwxNnx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60")),
        ]),
    
    
        .ThirdSection(content : [
            .Third( InterThirdModel(title: "one", desc: "This is Third Item", url :"https://images.unsplash.com/photo-1621264872587-10025d13a1a6?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1623&q=80", isChecked: false )),
            .Third(InterThirdModel(title: "two", desc: "This is Second Item", url : "https://images.unsplash.com/photo-1585399000684-d2f72660f092?ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1951&q=80", isChecked: true)),
            .Third(InterThirdModel(title: "three", desc: "This is Second Item", url :"https://images.unsplash.com/photo-1621193732872-afb661bf6c3f?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80", isChecked: true)),
            .Third(InterThirdModel(title: "four", desc: "This is Second Item", url : "https://images.unsplash.com/photo-1621265589322-4c409cb458da?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80", isChecked: false)),
            .Third(InterThirdModel(title: "five", desc: "This is Second Item", url :"https://images.unsplash.com/photo-1621267192123-1e91a88c598b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=934&q=80", isChecked: true)),
            .Third(InterThirdModel(title: "six", desc: "This is Second Item", url :"https://images.unsplash.com/photo-1621267526262-7d1dae4f1df6?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=2089&q=80", isChecked: false)),
            .Third(InterThirdModel(title: "seven", desc: "This is Second Item", url: "https://images.unsplash.com/photo-1621268274479-6f0f93323b06?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1955&q=80", isChecked: true))
        ])
    ])
}

struct IntermediateFirstViewModel {
    let title : String
    let desc : String
    
    init(data : InterFirstModel) {
        self.title = data.title
        self.desc = data.desc + "First Section Description"
    }
}

struct IntermediateSecondeViewModel {
    let title : String
    let desc : String
    let url : String
    
    init(data : InterSecondModel) {
        self.title = data.title
        self.desc = data.desc + "Second Section Description"
        self.url = data.url
    }
}

struct IntermediateThirdViewModel {
    let title : String
    let desc : String
    let url : String
    let isChecked : Bool
    
    init(data : InterThirdModel) {
        self.title = data.title
        self.desc = data.desc + "Third Section Description"
        self.url = data.url
        self.isChecked = data.isChecked
    }
}

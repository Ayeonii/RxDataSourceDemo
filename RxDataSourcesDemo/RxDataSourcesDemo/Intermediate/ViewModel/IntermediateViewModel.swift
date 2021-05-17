//
//  IntermediateViewModel.swift
//  RxDataSourcesDemo
//
//  Created by 이아연 on 2021/05/17.
//

import RxSwift


struct IntermediateViewModel {
    let dataSource = IntermediateDatasource.dataSource()
    
    var sectionItems = BehaviorSubject<[IntermediateModel]>(
        value: [
            IntermediateModel(itemList: [
                
                IntermediateItemModel(itemTitle: "One", itemDesc: "One of FirstSection"),
                IntermediateItemModel(itemTitle: "Two", itemDesc: "Two of FirstSection"),
                IntermediateItemModel(itemTitle: "Three", itemDesc: "Three of FirstSection"),
                IntermediateItemModel(itemTitle: "Four", itemDesc: "Four of FirstSection"),
                IntermediateItemModel(itemTitle: "Five", itemDesc: "Five of FirstSection"),
                IntermediateItemModel(itemTitle: "Six", itemDesc: "Six of FirstSection"),
                IntermediateItemModel(itemTitle: "Seven", itemDesc: "Seven of FirstSection")
            ], sectionTitle : "First Section"),
            
            
            
            IntermediateModel(itemList: [
                
                IntermediateItemModel(itemTitle: "One", itemDesc: "One of SecondSection"),
                IntermediateItemModel(itemTitle: "Two", itemDesc: "Two of SecondSection"),
                IntermediateItemModel(itemTitle: "Three", itemDesc: "Three of SecondSection"),
                IntermediateItemModel(itemTitle: "Four", itemDesc: "Four of SecondSection"),
                IntermediateItemModel(itemTitle: "Five", itemDesc: "Five of SecondSection"),
                IntermediateItemModel(itemTitle: "Six", itemDesc: "Six of SecondSection"),
                IntermediateItemModel(itemTitle: "Seven", itemDesc: "Seven of SecondSection")
            ], sectionTitle : "Second Section"),
            
            
            IntermediateModel(itemList: [
                
                IntermediateItemModel(itemTitle: "One", itemDesc: "One of ThirdSection"),
                IntermediateItemModel(itemTitle: "Two", itemDesc: "Two of ThirdSection"),
                IntermediateItemModel(itemTitle: "Three", itemDesc: "Three of ThirdSection"),
                IntermediateItemModel(itemTitle: "Four", itemDesc: "Four of ThirdSection"),
                IntermediateItemModel(itemTitle: "Five", itemDesc: "Five of ThirdSection"),
                IntermediateItemModel(itemTitle: "Six", itemDesc: "Six of ThirdSection"),
                IntermediateItemModel(itemTitle: "Seven", itemDesc: "Seven of ThirdSection")
            ], sectionTitle : "Third Section"),
            
        ]
    )
   
}

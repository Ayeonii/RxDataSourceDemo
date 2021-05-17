//
//  BasicViewModel.swift
//  RxDataSourcesDemo
//
//  Created by 이아연 on 2021/05/17.
//

import RxSwift

struct BasicViewModel {
    var items = Observable<[String]>.of(["One", "Two", "Three","Four","Five","Six","Seven","Eight","Nine","Ten"])
}


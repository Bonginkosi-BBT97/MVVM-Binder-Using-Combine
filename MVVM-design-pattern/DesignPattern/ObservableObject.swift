//
//  ObservableObject.swift
//  DesignPattern
//
//  Created by Bonginkosi Tshabalala on 2023/04/24.
//

import Foundation

final class ObservableObject<T> {
    
    var value: T {
        didSet {
            listener?(value)
        }
    }
    
    private var listener: ((T) -> Void)?
    
    init(value: T ) {
        self.value = value
    }
    
    func bind(_ listener: @escaping(T?) -> Void) {
        listener(value)
        self.listener = listener
    }
}

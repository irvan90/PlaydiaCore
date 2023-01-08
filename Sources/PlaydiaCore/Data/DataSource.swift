//
//  File.swift
//  
//
//  Created by Muhamad Irvan on 06/01/23.
//

import Foundation
import Combine

public protocol DataSource {
	associatedtype Request
	associatedtype Response

	func execute(request: Request?) -> AnyPublisher<Response, Error>
	func execute(request: Request?, keyword: String) -> AnyPublisher<Response, Error>
	func execute(request: Request?, id: Int, isFavorite: Bool) -> AnyPublisher<Response, Error>
}

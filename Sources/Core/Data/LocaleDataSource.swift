//
//  File.swift
//  
//
//  Created by Muhamad Irvan on 06/01/23.
//

import Foundation
import Combine

public protocol LocaleDataSource {
		associatedtype Request
		associatedtype Response

		func list(request: Request?) -> AnyPublisher<[Response], Error>
		func add(entities: [Response]) -> AnyPublisher<Bool, Error>
		func add(entities: Response) -> AnyPublisher<Bool, Error>
		func get(id: String) -> AnyPublisher<Response, Error>
		func update(id: Int, entity: Response) -> AnyPublisher<Bool, Error>
		func update(id: Int, isFavorite: Bool) -> AnyPublisher<Bool, Error>
}

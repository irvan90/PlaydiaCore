//
//  File.swift
//  
//
//  Created by Muhamad Irvan on 06/01/23.
//

import Foundation

public protocol Mapper {
		associatedtype Response
		associatedtype Entity
		associatedtype Domain

		func transformResponseToEntity(response: Response) -> Entity
		func transformEntityToDomain(entity: Entity) -> Domain
		func transformResponseToDomain(response: Response) -> Domain
}

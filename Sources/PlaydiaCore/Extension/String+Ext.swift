//
//  File.swift
//  
//
//  Created by Muhamad Irvan on 06/01/23.
//

import SwiftUI

extension String {
	public func convertToDate() -> String {
		let dateFormatter = DateFormatter()
		dateFormatter.dateFormat = "yyyy-MM-dd"
		let date = dateFormatter.date(from: self)
		return date?.convertToString(format: "MMM dd, yyyy") ?? "No Release Date"
	}
}

extension Date {
	public func convertToString(format: String) -> String {
		let formatter = DateFormatter()
		formatter.dateFormat = format
		return formatter.string(from: self)
	}
}

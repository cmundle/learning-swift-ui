//
//  ModelData.swift
//  Landmarks
//
//  Created by Christopher Mundle on 2020-12-12.
//

import Foundation

var landmarks: [Landmark] = load(_filename: "landmarkData.json")

func load<T: Decodable>(_filename: String) -> T {
	let data: Data
	
	guard let file = Bundle.main.url(forResource: _filename, withExtension: nil)
	else {
		fatalError("Couldn't find \(_filename) in main bundle.")
	}
	
	do {
		data = try Data(contentsOf: file)
	} catch {
		fatalError("Couldn't load \(_filename) from main bundle: \n\(error)")
	}
	
	do {
		let decoder = JSONDecoder()
		return try decoder.decode(T.self, from: data)
	} catch {
		fatalError("Couldn't parse \(_filename) as \(T.self):\n\(error)")
	}
}

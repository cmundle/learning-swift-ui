//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Christopher Mundle on 2020-12-12.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
		NavigationView {
			List(landmarks, id: \.id) { landmark in
				NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
					LandmarkRow(landmark: landmark)
				}
			}
			.navigationTitle("Landmarks")
		}
    }
}

struct LandmarkList_Previews: PreviewProvider {
		static var previews: some View {
				ForEach(["iPhone SE", "iPhone 12 Pro Max"], id: \.self) { deviceName in
						LandmarkList()
								.previewDevice(PreviewDevice(rawValue: deviceName))
								.previewDisplayName(deviceName)
				}
		}
}

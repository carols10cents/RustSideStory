//
//  UIFont+Convenience.swift
//  RustSideStory
//
//  Created by Christopher Luu on 10/2/16.
//  Copyright © 2016 nuudles. All rights reserved.
//

import UIKit

enum Font {
	case courierNew
	case dirtyEgo

	var name: String {
		switch self {
		case .dirtyEgo:
			return "DirtyEgo"
		case .courierNew:
			return "CourierNewPSMT"
		}
	}

	func withSize(size: CGFloat) -> UIFont {
		return UIFont(name: name, size: size)!
	}
}

extension UIFont {
	static func listFonts() {
		for familyName in familyNames {
			print("------------------------------")
			print("Font Family Name = [\(familyName)]")
			let names = UIFont.fontNames(forFamilyName: familyName)
			print("Font Names = [\(names)]")
		}
	}
}

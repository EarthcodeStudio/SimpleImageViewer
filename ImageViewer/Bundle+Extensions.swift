//
//  Bundle+Extensions.swift
//  Example
//
//  Created by Zbyszek Kalafarski on 27/11/2020.
//  Copyright © 2020 aFrogleap. All rights reserved.
//

import Foundation

private class BundleToken {}

extension Bundle {

	static func sm_frameworkBundle() -> Bundle {

		let candidates = [Bundle.main.resourceURL,
						  Bundle(for: BundleToken.self).resourceURL,
						  Bundle.main.bundleURL]

		let bundleName = "SimpleImageViewController"

		for candidate in candidates {
			let bundlePath = candidate?.appendingPathComponent(bundleName + ".bundle")
			if let bundle = bundlePath.flatMap(Bundle.init(url:)) {
				return bundle
			}
		}

		return Bundle(for: BundleToken.self)
	}
}

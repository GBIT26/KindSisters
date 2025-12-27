import SwiftUI

extension Font {
    static func bigShoulders(size: CGFloat, weight: Font.Weight = .regular) -> Font {
        // Fallback to system font with appropriate weight
        return .system(size: size, weight: weight, design: .default)
    }
    
    static func redHat(size: CGFloat, weight: Font.Weight = .regular) -> Font {
        // Fallback to system font
        return .system(size: size, weight: weight, design: .rounded)
    }
}

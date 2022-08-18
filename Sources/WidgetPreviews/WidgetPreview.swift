//
//  Created by Ian Leon on 8/17/22.
//

import SwiftUI
import Muscovado

@available(iOS 15, macOS 12.0, *)
struct WidgetPreview: ViewModifier {
    let width: CGFloat
    let height: CGFloat
    
    let paddingX: CGFloat = 25
    let paddingY: CGFloat = 25
    
    var widgetRectangle: RoundedRectangle {
        return RoundedRectangle(cornerRadius: 23, style: .continuous)
    }
    
    func widgetBackground() -> some View {
        return ZStack {
            widgetRectangle
                .stroke(Color(white: 0.86), lineWidth: 12)
            widgetRectangle
                .foregroundColor(.white)
        }
    }
    
    func body(content: Content) -> some View {
        content
            .frame(width: width, height: height)
            .background(widgetBackground())
            .paddingXY(paddingX, paddingY)
    }
}

@available(iOS 15, macOS 12.0, *)
extension View {
    func previewSmallWidget() -> some View {
        modifier(WidgetPreview(width: 160, height: 160))
    }
    
    func previewMediumWidget() -> some View {
        modifier(WidgetPreview(width: 356, height: 160))
    }
    
    func previewLargeWidget() -> some View {
        modifier(WidgetPreview(width: 356, height: 356))
    }
    
    func previewExtraLargeWidget() -> some View {
        modifier(WidgetPreview(width: 748, height: 356))
    }
}

@available(iOS 15, macOS 12.0, *)
struct PreviewWidget_Previews: PreviewProvider {
    static var previews: some View {
        
        return Text("Hello World!")
            .previewSmallWidget()
            .previewMediumWidget()
            .previewLargeWidget()
            .previewExtraLargeWidget()
    }
}

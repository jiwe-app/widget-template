import JiweInterface
import SwiftUI

struct Widget: JiweWidget {
    var name: String = "WIDGET_NAME";
    var view: any View = WidgetView();
}

struct WidgetView: View {
    var body: some View {
        Text("Hello Jiwe!")
        }
    }
}

@_cdecl("createPlugin")
public func createPlugin() -> UnsafeMutableRawPointer {
    return Unmanaged.passRetained(WidgetABuilder()).toOpaque()
}

final class WidgetBuilder: JiweWidgetBuilder {

    override func build() -> JiweWidget {
        Widget()
    }
}
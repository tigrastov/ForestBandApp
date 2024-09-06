

import SwiftUI

struct SelectKeyForGuitar: View {
    @State private var cAmViewShow = false
    @State private var dHmViewShow = false
    @State private var gEmViewShow = false
    @State private var fDmViewShow = false
    @State private var isShowBack = false
    var body: some View {
        
        GeometryReader { proxy in
            let size = proxy.size
            
            
            VStack {
                Spacer()
                Text("Key Select for Guitar").foregroundStyle(.white)
                Spacer()
                Button {
                    print("C-Am")
                    cAmViewShow.toggle()
                } label: {
                    Image("C - Am")
                }
                .fullScreenCover(isPresented: $cAmViewShow){
                    CAmView()
                }
                
                Button {
                    print("G-Em")
                    gEmViewShow.toggle()
                } label: {
                    Image("G - Em")
                }
                .fullScreenCover(isPresented: $gEmViewShow){
                    GEmView()
                }
                Button {
                    print("D-Hm")
                    dHmViewShow.toggle()
                } label: {
                    Image("D - Hm")
                }
                .fullScreenCover(isPresented: $dHmViewShow){
                    DHmView()
                }
                Button {
                    print("F-Dm")
                    fDmViewShow.toggle()
                } label: {
                    Image("F -Dm")
                }
                .fullScreenCover(isPresented: $fDmViewShow){
                    FDmView()
                }
                Button {
                    print("F-Dm")
                    isShowBack.toggle()
                } label: {
                    Image("back")
                }
                .fullScreenCover(isPresented: $isShowBack){
                    SelectInstrView()
                }
                
                
                Spacer()
               

            }
            .frame(width: size.width, height: size.height).background(Color.black)
            
            
        }
    }
}

#Preview {
    SelectKeyForGuitar()
}

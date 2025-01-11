

import SwiftUI

struct SelectKeyPiano: View {
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
                Text("Key Select for Piano").foregroundStyle(.white)
                Spacer()
                Button {
                    print("C-Am")
                    cAmViewShow.toggle()
                } label: {
                    Image("C - Am")
                }
                .fullScreenCover(isPresented: $cAmViewShow){
                    CAmPiano()
                }
                
                Button {
                    print("G-Em")
                    gEmViewShow.toggle()
                } label: {
                    Image("G - Em")
                }
                .fullScreenCover(isPresented: $gEmViewShow){
                    GEmPianoVew()
                }
                Button {
                    print("D-Hm")
                    dHmViewShow.toggle()
                } label: {
                    Image("D - Hm")
                }
                .fullScreenCover(isPresented: $dHmViewShow){
                    DHmPianoView()
                }
                Button {
                    print("F-Dm")
                    fDmViewShow.toggle()
                } label: {
                    Image("F -Dm")
                }
                .fullScreenCover(isPresented: $fDmViewShow){
                    FDmPianoView()
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
    SelectKeyPiano()
}




import SwiftUI

struct BassView: View {
    @ObservedObject var viewModel = ViewModelAll()
    @State private var isShowset = false
    var body: some View {
        VStack {
            
            HStack(spacing: 50){
                VStack{
                    
                    Image("ABass").onLongPressGesture(minimumDuration: 0) {
                        print("A")
                       // self.viewModel.playAll(name: "A(bass)")
                        viewModel.play(name: "A(bass)")
                    }
                    Image("AbBass").onLongPressGesture(minimumDuration: 0) {
                        print("Ab")
                        viewModel.play(name: "Ab(bass)")
                    }
                    Image("GBass").onLongPressGesture (minimumDuration: 0){
                        print("G")
                        viewModel.play(name: "G(bass)")
                    }
                    Image("F#Bass").onLongPressGesture(minimumDuration: 0) {
                        print("F#")
                        viewModel.play(name: "F#(bass)")
                    }
                    Image("imageF").onLongPressGesture(minimumDuration: 0) {
                        print("F")
                        viewModel.play(name: "F(bass)")
                    }
                    Image("EBass").onLongPressGesture (minimumDuration: 0){
                        print("E")
                        viewModel.play(name: "E(bass)")
                    }
                }
                VStack{
                    Image("HbBass").onLongPressGesture(minimumDuration: 0) {
                        print("Hb")
                        viewModel.play(name: "Hb(bass)")
                    }
                    Image("HBass").onLongPressGesture(minimumDuration: 0) {
                        print("H")
                        viewModel.play(name: "H(bass)")
                    }
                    Image("imageC").onLongPressGesture (minimumDuration: 0){
                        print("C")
                        viewModel.play(name: "C(bass)")
                    }
                    Image("C#Bass").onLongPressGesture(minimumDuration: 0) {
                        print("C#")
                        viewModel.play(name: "C#(bass)")
                    }
                    Image("DBass").onLongPressGesture(minimumDuration: 0) {
                        print("D")
                        viewModel.play(name: "D(bass)")
                    }
                    Image("EbBass").onLongPressGesture (minimumDuration: 0){
                        print("Eb")
                        viewModel.play(name: "Eb(bass)")
                    }
                }
            }
            
        }
        .offset(y: -40)
        .frame(width: screen.width, height: screen.height)
        .background(Image("bgBass").resizable().scaledToFill().ignoresSafeArea())
        
        
        .overlay(alignment: .bottom) {
            HStack{
                Image("BassBass")
                Button {
                    print("Settings")
                    isShowset.toggle()
                } label: {
                    Image("settings")
                }
                .offset(x: 15
                )
                .fullScreenCover(isPresented: $isShowset){
                    SelectInstrView()
                }
                
            }.frame(width: screen.width * 0.95, height: screen.height / 7).background(Color("")).shadow(radius: 5).cornerRadius(60)
                .padding()
                .onTapGesture {
                    self.viewModel.stop()
                }
        }
    }
}


#Preview {
    BassView()
}

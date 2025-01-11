

import SwiftUI

struct SelectInstrView: View {
    @State private var isShowGuitar = false
    @State private var isShowBass = false
    @State private var isShowDrums = false
    @State private var isShowPiano = false
    var body: some View {
        VStack {
            Spacer()
            Image("Select a musical instrument")
            Spacer()
            
            Button {
                print("Piano")
                isShowPiano.toggle()
            } label: {
               Image("Piano")
                
            }
            .fullScreenCover(isPresented: $isShowPiano) {
                SelectKeyPiano()
            }
            
            Button {
                print("Guitar")
                isShowGuitar.toggle()
            } label: {
             Image("Guit")
            }
            .fullScreenCover(isPresented: $isShowGuitar){
                SelectKeyForGuitar()
            }
            Button {
                print("Bass")
                isShowBass.toggle()
            } label: {
                Image("Bass")
            }
            .fullScreenCover(isPresented: $isShowBass){
                BassView()
            }
            Button {
                print("Draums")
                isShowDrums.toggle()
            } label: {
                Image("Drums")
            }
            .fullScreenCover(isPresented: $isShowDrums){
                DrumsTrueView()
            }
Spacer()

        }
        .frame(width: screen.width, height: screen.height)
            .background(Image("bgSelect").resizable().scaledToFill().ignoresSafeArea())
        
    }
}

#Preview {
    SelectInstrView()
}

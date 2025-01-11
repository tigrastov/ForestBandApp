import Foundation

class DrumsViewModelNew: ObservableObject {
    func play(name: String) {
        PlayerDrums.shared.playSound(name: name)
    }
    func stop() {
        PlayerDrums.shared.stopAllSounds()
    }
}

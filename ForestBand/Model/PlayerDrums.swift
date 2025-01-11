import Foundation
import AVFoundation

class PlayerDrums {
    static let shared = PlayerDrums()
    private init() {}

    private var players: [String: AVAudioPlayer] = [:] // Хранит плееры по имени звука

    func playSound(name: String) {
        guard let audioPath = Bundle.main.path(forResource: name, ofType: "mp3") else {
            print("Звук не найден: \(name)")
            return
        }
        do {
            let audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: audioPath))
            audioPlayer.play()
            players[name] = audioPlayer // Сохраняем плеер, чтобы он не "освобождался" из памяти
        } catch {
            print("Ошибка воспроизведения звука: \(error.localizedDescription)")
        }
    }

    func stopAllSounds() {
        for (_, player) in players {
            player.stop()
        }
        players.removeAll()
    }
}

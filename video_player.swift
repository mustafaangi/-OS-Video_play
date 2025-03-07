import UIKit
import AVKit
import AVFoundation

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Create a button
        let playButton = UIButton(type: .system)
        playButton.setTitle("Play Video", for: .normal)
        playButton.addTarget(self, action: #selector(playButtonTapped), for: .touchUpInside)
        
        // Add button to the view
        view.addSubview(playButton)
        
        // Set up constraints
        playButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            playButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            playButton.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
    
    @objc private func playButtonTapped() {
        findVideo()
    }
    
    private func findVideo() {
        guard let path = Bundle.main.path(forResource: "Cauchy-Schwarz inequality", ofType: "mp4") else {
            debugPrint("Cauchy-Schwarz inequality.mp4 not found")
            return
        }
        let player = AVPlayer(url: URL(fileURLWithPath: path))
        let playerController = AVPlayerViewController()
        playerController.player = player
        present(playerController, animated: true) {
            player.play()
        }
    }
}

# Simple Video Player iOS App

This is a basic iOS application that demonstrates how to play a video file using AVKit and AVFoundation. It includes a single "Play Video" button that, when tapped, presents a video player with standard controls.

## Features

* Plays a video file from the app's bundle.
* Uses `AVPlayerViewController` for video playback with built-in controls.
* Simple and easy-to-understand code.

## Requirements

* Xcode 15 or later
* iOS 17 or later (or adjust the code for compatibility with older versions)

## Installation

1. Clone this repository.
2. Open the `SimpleVideoPlayer.xcodeproj` file in Xcode.
3. Make sure the video file ("Cauchy-Schwarz inequality.mp4") is included in your project and that the file name in the code (`findVideo()` function) matches the actual file name.
4. Build and run the app on a simulator or device.

## Usage

1. Tap the "Play Video" button.
2. The video player will appear and start playing the video.
3. Use the standard controls on the player to play, pause, adjust volume, etc.

## Code Overview

The main logic for video playback is in `ViewController.swift`. 

* `viewDidLoad()`: Sets up the "Play Video" button and its constraints.
* `playButtonTapped()`:  Called when the button is tapped; triggers the `findVideo()` function.
* `findVideo()`: Locates the video file, creates an `AVPlayer`, and presents an `AVPlayerViewController` to play the video.

## Contributing

Feel free to fork this repository and submit pull requests for any improvements or bug fixes.


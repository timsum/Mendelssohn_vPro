//
//  ImmersiveView.swift
//  click_file_loader
//
//  Created by Tim Summers on 8/27/24.
//

import Foundation
import SwiftUI
import RealityKit
import RealityKitContent

struct ImmersiveView: View {
    @Environment(AppModel.self) var appModel
    
    var body: some View {
        RealityView { content in

            // this gets the list of strings...
//            let fileNames:[String] = getAllFileNamesWithPrefix(in: "/Users/timsummers/MCO_VisionPro/click_file_loader/Mend", prefix: "")!
            
            let fileNames:[String] = ["MCO_Mend 17_Violin1_Scherzo.wav",
                                      "MCO_Mend 111_Posaune_MCM_Scherzo.wav",
                                      "MCO_Mend 32_KB_Scherzo.wav",
                                      "MCO_Mend 86_VA_MCM_Scherzo.wav",
                                      "MCO_Mend 16_Violin1_Scherzo.wav",
                                      "MCO_Mend 60_Flute_Scherzo.wav",
                                      "MCO_Mend 63_Oboe_Scherzo.wav",
                                      "MCO_Mend 8_Violin1_Scherzo.wav",
                                      "MCO_Mend 15_Violin1_Scherzo.wav",
                                      "MCO_Mend 21_Violin1_MCM_Scherzo.wav",
                                      "MCO_Mend 90_Pauke_MCM_Scherzo.wav",
                                      "MCO_Mend 14_Violin1_Scherzo.wav",
                                      "MCO_Mend 107_Klarinett_MCM_Scherzo.wav",
                                      "MCO_Mend 9_Violin1_Scherzo.wav",
                                      "MCO_Mend 59_PERC_Scherzo.wav",
                                      "MCO_Mend 35_KB_Scherzo.wav",
                                      "MCO_Mend 34_KB_Scherzo.wav",
                                      "MCO_Mend 49_VN2_Scherzo.wav",
                                      "MCO_Mend 12_Violin1_Scherzo.wav",
                                      "MCO_Mend 78_VN2_MCM_Scherzo.wav",
                                      "MCO_Mend 13_Violin1_Scherzo.wav",
                                      "MCO_Mend 79_VN2_MCM_Scherzo.wav",
                                      "MCO_Mend 98_Flute_MCM_Scherzo.wav",
                                      "MCO_Mend 61_Flute_Scherzo.wav",
                                      "MCO_Mend 50_VN2_Scherzo.wav",
                                      "MCO_Mend 88_VA_MCM_Scherzo.wav",
                                      "MCO_Mend 85_VA_MCM_Scherzo.wav",
                                      "MCO_Mend 33_KB_Scherzo.wav",
                                      "MCO_Mend 10_Violin1_Scherzo.wav",
                                      "MCO_Mend 25_Violin1_MCM_Scherzo.wav",
                                      "MCO_Mend 11_Violin1_Scherzo.wav",
                                      "MCO_Mend 92_Pauke_MCM_Scherzo.wav",
                                      "MCO_Mend 69_Horn_Scherzo.wav",
                                      "MCO_Mend 31_KB_Scherzo.wav",
                                      "MCO_Mend 70_Klarinett_Scherzo.wav",
                                      "MCO_Mend 51_VN2_Scherzo.wav",
                                      "MCO_Mend 84_VN2_MCM_Scherzo.wav",
                                      "MCO_Mend 18_Violin1_MCM_Scherzo.wav",
                                      "MCO_Mend 26_Violin1_MCM_Scherzo.wav",
                                      "MCO_Mend 38_KB_MCM_Scherzo.wav",
                                      "MCO_Mend 36_KB_Scherzo.wav",
                                      "MCO_Mend 76_PosTB_Scherzo.wav",
                                      "MCO_Mend 4_Scherzo.wav",
                                      "MCO_Mend 29_VC_MCM_Scherzo.wav",
                                      "MCO_Mend 62_Oboe_Scherzo.wav",
                                      "MCO_Mend 80_VN2_MCM_Scherzo.wav",
                                      "MCO_Mend 22_Violin1_MCM_Scherzo.wav",
                                      "MCO_Mend 5 HauptRR_Scherzo.wav",
                                      "MCO_Mend 81_VN2_MCM_Scherzo.wav",
                                      "MCO_Mend 95_Tuba_MCM_Scherzo.wav",
                                      "MCO_Mend 68_Horn_Scherzo.wav",
                                      "MCO_Mend 112_Posaune_MCM_Scherzo.wav",
                                      "MCO_Mend 82_VN2_MCM_Scherzo.wav",
                                      "MCO_Mend 83_VN2_MCM_Scherzo.wav",
                                      "MCO_Mend 103_Trumpet_MCM_Scherzo.wav",
                                      "MCO_Mend 56_VA_Scherzo.wav",
                                      "MCO_Mend 91_Pauke_MCM_Scherzo.wav",
                                      "MCO_Mend 108_Fag_MCM_Scherzo.wav",
                                      "MCO_Mend 53_VN2_Scherzo.wav",
                                      "MCO_Mend 24_Violin1_MCM_Scherzo.wav",
                                      "MCO_Mend 37_KB_MCM_Scherzo.wav",
                                      "MCO_Mend 109_Fag_MCM_Scherzo.wav",
                                      "MCO_Mend 27_VC_MCM_MCM_Scherzo.wav",
                                      "MCO_Mend 72_Fag_Scherzo.wav",
                                      "MCO_Mend 74_Pos_Scherzo.wav",
                                      "MCO_Mend 6_Scherzo.wav",
                                      "MCO_Mend 105_Horn_MCM_Scherzo.wav",
                                      "MCO_Mend 20_Violin1_MCM_Scherzo.wav",
                                      "MCO_Mend 93_Pauke_MCM_Scherzo.wav",
                                      "MCO_Mend 101_Trumpet_MCM_Scherzo.wav",
                                      "MCO_Mend 7 Violin1_Scherzo.wav",
                                      "MCO_Mend 57_VA_Scherzo.wav",
                                      "MCO_Mend 110_Posaune_MCM_Scherzo.wav",
                                      "MCO_Mend 99_Oboe_MCM_Scherzo.wav",
                                      "MCO_Mend 3 HauptLF_Scherzo.wav",
                                      "MCO_Mend 39_KB_MCM_Scherzo.wav",
                                      "MCO_Mend 102_Trumpet_MCM_Scherzo.wav",
                                      "MCO_Mend 94_Perc_MCM_Scherzo.wav",
                                      "MCO_Mend 67_Trumpet_Scherzo.wav",
                                      "MCO_Mend 55_VA_Scherzo.wav",
                                      "MCO_Mend 66_Trumpet_Scherzo.wav",
                                      "MCO_Mend 65_Trumpet_Scherzo.wav",
                                      "MCO_Mend 28_VC_MCM_MCM_Scherzo.wav",
                                      "MCO_Mend 97_Flute_MCM_Scherzo.wav",
                                      "MCO_Mend 89_VA_MCM_Scherzo.wav",
                                      "MCO_Mend 64_Trumpet_Scherzo.wav",
                                      "MCO_Mend 23_Violin1_MCM_Scherzo.wav",
                                      "MCO_Mend 71_Klarinett_Scherzo.wav",
                                      "MCO_Mend 58_PK_Scherzo.wav",
                                      "MCO_Mend 87_VA_MCM_Scherzo.wav",
                                      "MCO_Mend 106_Klarinett_MCM_Scherzo.wav",
                                      "MCO_Mend 52_VN2_Scherzo.wav",
                                      "MCO_Mend 73_Fag_Scherzo.wav",
                                      "MCO_Mend 100_Oboe_MCM_Scherzo.wav",
                                      "MCO_Mend 104_Horn_MCM_Scherzo.wav",
                                      "MCO_Mend 75_Pos_Scherzo.wav",
                                      "MCO_Mend 30_VC_MCM_Scherzo.wav",
                                      "MCO_Mend 19_Violin1_MCM_Scherzo.wav",
                                      "MCO_Mend 54_VA_Scherzo.wav"]
            
            // Then add the initial RealityKit content

            if let immersiveContentEntity = try? await Entity(named: "Immersive", in: realityKitContentBundle) {
                content.add(immersiveContentEntity)
            }
            do {
                // add fifty entities with spatial audio components.
               var i = 0
                for filename in fileNames  {
                    //if (i < 60) {
                        let randomVector = SIMD3<Float>(
                            Float.random(in: -1...1),
                            Float.random(in: 0...2),
                            Float.random(in: -2...0)
                        )
                        
                        let aEnt = Entity()
                        let resrc = try await AudioFileResource(named: filename)
                        //print("\"\(filename)\", ")
                        // randomize their location within 5 meters
                        aEnt.position = randomVector
                        
                        // put an sphere
                        aEnt.addChild(ModelEntity(mesh: .generateSphere(radius: 0.05)))
                        // play them.
                        aEnt.playAudio(resrc)
                        content.add(aEnt)
                        i += 1
                    //}
                }
            } catch {
                print("Error loading winter vivarium model and/or audio: \(error.localizedDescription)")
            }
        }
    }
    
    func getAllFileNamesWithPrefix(in directoryPath: String, prefix: String) -> [String]? {
        let fileManager = FileManager.default

        // Get the URL of the directory
        let directoryURL = URL(fileURLWithPath: directoryPath)

        do {
            // Retrieve the contents of the directory
            let fileURLs = try fileManager.contentsOfDirectory(at: directoryURL, includingPropertiesForKeys: nil)
            
            // Map URLs to file names
            let fileNames = fileURLs
                .map { $0.lastPathComponent }
                .filter { $0.hasPrefix(prefix) }

            return fileNames
        } catch {
            // Handle error if directory cannot be read
            print("Error reading contents of directory: \(error.localizedDescription)")
            return nil
        }
    }
}

#Preview(immersionStyle: .full) {
    ImmersiveView()
        .environment(AppModel())
}

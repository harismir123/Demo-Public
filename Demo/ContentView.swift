//
//  ContentView.swift
//  SHADemo
//
//  Created by Malik Farrukh on 9/23/26.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {

                Image(systemName: "shippingbox.fill")
                    .font(.system(size: 50))
                    .foregroundStyle(.tint)

                Text("Build Information")
                    .font(.title2)
                    .fontWeight(.bold)

                VStack(alignment: .leading, spacing: 16) {

                    infoRow(
                        title: "Version",
                        value: BuildInfo.version
                    )

                    infoRow(
                        title: "Build",
                        value: BuildInfo.buildNumber
                    )

                    infoRow(
                        title: "Branch",
                        value: BuildInfo.gitBranch
                    )

                    VStack(alignment: .leading, spacing: 6) {
                        Text("Commit SHA")
                            .font(.caption)
                            .foregroundStyle(.secondary)

                        Text(BuildInfo.gitCommit)
                            .font(.system(.body, design: .monospaced))
                            .textSelection(.enabled)
                    }
                    
                    infoRow(
                        title: "ixguard Toolchain",
                        value: String(BuildInfo.isIxGuardUsed)
                    )
                }
                .padding()
                .background(.thinMaterial)
                .clipShape(
                    RoundedRectangle(cornerRadius: 16)
                )
            }
            .padding()
            .navigationTitle("SHADemo")
        }
    }

    private func infoRow(
        title: String,
        value: String
    ) -> some View {
        HStack {
            Text(title)
                .foregroundStyle(.secondary)

            Spacer()

            Text(value)
                .fontWeight(.medium)
        }
    }
}

#Preview {
    ContentView()
}

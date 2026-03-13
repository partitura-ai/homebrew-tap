class Tune < Formula
  desc "AI-powered command output filter for coding agents"
  homepage "https://github.com/partitura-ai/tune"
  version "1.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/partitura-ai/tune/releases/download/v1.1.0/tune-darwin-arm64.tar.gz"
      sha256 "2cf8095fcb0c443e8ae279e3ca9bb79cf165ab4f3327bc7005e223efe76f5613"

      def install
        bin.install "tune-darwin-arm64" => "tune"
      end
    else
      url "https://github.com/partitura-ai/tune/releases/download/v1.1.0/tune-darwin-amd64.tar.gz"
      sha256 "d7f3ccaad2d4f6a255c55de6df19f6c9f611d208e9e14270c974c029c9344269"

      def install
        bin.install "tune-darwin-amd64" => "tune"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/partitura-ai/tune/releases/download/v1.1.0/tune-linux-arm64.tar.gz"
      sha256 "09598743d729301ef49150420c270400ea0ef1609d0b3aba7b6bdd8b056c34eb"

      def install
        bin.install "tune-linux-arm64" => "tune"
      end
    else
      url "https://github.com/partitura-ai/tune/releases/download/v1.1.0/tune-linux-amd64.tar.gz"
      sha256 "8369e6df4700bb4215e19dc31174deae1df744e4be41dc49402af2c821b0ab0c"

      def install
        bin.install "tune-linux-amd64" => "tune"
      end
    end
  end

  test do
    assert_match "tune 1.1.0", shell_output("#{bin}/tune --version")
  end
end

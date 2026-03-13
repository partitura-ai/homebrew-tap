class Tune < Formula
  desc "AI-powered command output filter for coding agents"
  homepage "https://github.com/partitura-ai/tune"
  version "1.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/partitura-ai/tune/releases/download/v1.3.0/tune-darwin-arm64.tar.gz"
      sha256 "d10c37155a45d4d8b559d20e3b38ea4771d95dd5058f6fc6fa4c93278a3cd8c1"

      def install
        bin.install "tune-darwin-arm64" => "tune"
      end
    else
      url "https://github.com/partitura-ai/tune/releases/download/v1.3.0/tune-darwin-amd64.tar.gz"
      sha256 "d631a8dd1c8ede37cb971e668c7262493ea73bdf7bc960f23c4a010f128d410a"

      def install
        bin.install "tune-darwin-amd64" => "tune"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/partitura-ai/tune/releases/download/v1.3.0/tune-linux-arm64.tar.gz"
      sha256 "715f9a2dacbb8e1c96192b69b9ffe0e06a47cecf7409bcf0c4667f7539bfbb2a"

      def install
        bin.install "tune-linux-arm64" => "tune"
      end
    else
      url "https://github.com/partitura-ai/tune/releases/download/v1.3.0/tune-linux-amd64.tar.gz"
      sha256 "48804184b3b1e08b077a266f1fa81cddcdc64a8eab99f8e85a339d3b264fcdc7"

      def install
        bin.install "tune-linux-amd64" => "tune"
      end
    end
  end

  test do
    assert_match "tune 1.3.0", shell_output("#{bin}/tune --version")
  end
end

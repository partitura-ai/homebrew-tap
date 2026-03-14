class Tune < Formula
  desc "AI-powered command output filter for coding agents"
  homepage "https://github.com/partitura-ai/tune"
  version "1.4.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/partitura-ai/tune/releases/download/v1.4.1/tune-darwin-arm64.tar.gz"
      sha256 "cb3872f37d20a9204f4f48ad881b864fdcb92b0358cf785544cc42bcb3815caa"

      def install
        bin.install "tune-darwin-arm64" => "tune"
      end
    else
      url "https://github.com/partitura-ai/tune/releases/download/v1.4.1/tune-darwin-amd64.tar.gz"
      sha256 "f6066c9bf9d003e4ac1c77c5a89fdd993f773002d459be1b906b148de40f698e"

      def install
        bin.install "tune-darwin-amd64" => "tune"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/partitura-ai/tune/releases/download/v1.4.1/tune-linux-arm64.tar.gz"
      sha256 "941e1081ddd8a9a89040b099ff4a970e1072f1f6f23a0ec430bff85068469a1e"

      def install
        bin.install "tune-linux-arm64" => "tune"
      end
    else
      url "https://github.com/partitura-ai/tune/releases/download/v1.4.1/tune-linux-amd64.tar.gz"
      sha256 "11651cc224385e0416845b2059d61d5bf5021971e3c24ba28d9399f618917e85"

      def install
        bin.install "tune-linux-amd64" => "tune"
      end
    end
  end

  test do
    assert_match "tune 1.4.1", shell_output("#{bin}/tune --version")
  end
end

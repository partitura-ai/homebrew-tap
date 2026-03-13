class Tune < Formula
  desc "AI-powered command output filter for coding agents"
  homepage "https://github.com/partitura-ai/tune"
  version "1.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/partitura-ai/tune/releases/download/v1.2.0/tune-darwin-arm64.tar.gz"
      sha256 "122c34cc1ac836df31a6014ef441170df6aaa547c8bf25676a23917ea1ef38de"

      def install
        bin.install "tune-darwin-arm64" => "tune"
      end
    else
      url "https://github.com/partitura-ai/tune/releases/download/v1.2.0/tune-darwin-amd64.tar.gz"
      sha256 "e679d43f3798617f9c31ce8350668eec06aa604d337f5c4585597d3ab9225c73"

      def install
        bin.install "tune-darwin-amd64" => "tune"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/partitura-ai/tune/releases/download/v1.2.0/tune-linux-arm64.tar.gz"
      sha256 "b215ee450da95a217e849e2658eb5d8b7ef7288c32f32c838b602bff4ef8460d"

      def install
        bin.install "tune-linux-arm64" => "tune"
      end
    else
      url "https://github.com/partitura-ai/tune/releases/download/v1.2.0/tune-linux-amd64.tar.gz"
      sha256 "8a1cdad5dd4a2117263fc0308243d8442021877e92349e23a6ecfaadf3bae837"

      def install
        bin.install "tune-linux-amd64" => "tune"
      end
    end
  end

  test do
    assert_match "tune 1.2.0", shell_output("#{bin}/tune --version")
  end
end

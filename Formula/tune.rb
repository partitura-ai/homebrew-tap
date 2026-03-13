class Tune < Formula
  desc "AI-powered command output filter for coding agents"
  homepage "https://github.com/partitura-ai/tune"
  version "1.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/partitura-ai/tune/releases/download/v1.0.0/tune-darwin-arm64.tar.gz"
      sha256 "6cc122decbd44e05e7616ffbccb7a7e8c2b98b8cfc6d3d10c6bcd4f5e2610400"

      def install
        bin.install "tune-darwin-arm64" => "tune"
      end
    else
      url "https://github.com/partitura-ai/tune/releases/download/v1.0.0/tune-darwin-amd64.tar.gz"
      sha256 "2b2ad0545c6cb42f06699c490b2ec1eabea36ec56d2cde2cc00b5e2ac6e528f0"

      def install
        bin.install "tune-darwin-amd64" => "tune"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/partitura-ai/tune/releases/download/v1.0.0/tune-linux-arm64.tar.gz"
      sha256 "961409b95b550f6688e704ff65f1be433ae863e5a8245279f750eddfd9788202"

      def install
        bin.install "tune-linux-arm64" => "tune"
      end
    else
      url "https://github.com/partitura-ai/tune/releases/download/v1.0.0/tune-linux-amd64.tar.gz"
      sha256 "cce01fb7d7074dcb3113f9ec2cab9f2c0fa687bb9663281da8567f3840b21c83"

      def install
        bin.install "tune-linux-amd64" => "tune"
      end
    end
  end

  test do
    assert_match "tune 1.0.0", shell_output("#{bin}/tune --version")
  end
end

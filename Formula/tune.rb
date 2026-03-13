class Tune < Formula
  desc "AI-powered command output filter for coding agents"
  homepage "https://github.com/partitura-ai/tune"
  version "1.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/partitura-ai/tune/releases/download/v1.2.0/tune-darwin-arm64.tar.gz"
      sha256 "c2b65d3649bf1a81432ba76f01a8d96816721796dce2efe846d1d7849ff9e888"

      def install
        bin.install "tune-darwin-arm64" => "tune"
      end
    else
      url "https://github.com/partitura-ai/tune/releases/download/v1.2.0/tune-darwin-amd64.tar.gz"
      sha256 "d60e147f09e2ace0e2980b29d3fa929bd02d064d133a1552fc2dea82fc770348"

      def install
        bin.install "tune-darwin-amd64" => "tune"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/partitura-ai/tune/releases/download/v1.2.0/tune-linux-arm64.tar.gz"
      sha256 "ee93991da81e2aa67842d18e90652d16e84797a1c6283331c62388262fa4117b"

      def install
        bin.install "tune-linux-arm64" => "tune"
      end
    else
      url "https://github.com/partitura-ai/tune/releases/download/v1.2.0/tune-linux-amd64.tar.gz"
      sha256 "ab5351f30159e10e374a70cd3a8faeac0db659841cb9cc6e12db8483a184c8a7"

      def install
        bin.install "tune-linux-amd64" => "tune"
      end
    end
  end

  test do
    assert_match "tune 1.2.0", shell_output("#{bin}/tune --version")
  end
end

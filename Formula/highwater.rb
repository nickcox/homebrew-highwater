class Highwater < Formula
  desc "Local viewer for how coding-agent sessions use their context window"
  homepage "https://github.com/nickcox/highwater"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nickcox/highwater/releases/download/v0.5.5/highwater-0.5.5-aarch64-apple-darwin.tar.gz"
      sha256 "46ca2b279b3c9b6ba6f0808d2ce18398f4d8d62aa8a68e52847fa4521665cf6f"
    end
    on_intel do
      url "https://github.com/nickcox/highwater/releases/download/v0.5.5/highwater-0.5.5-x86_64-apple-darwin.tar.gz"
      sha256 "7819f482e27571603a5fc04bfa486a0c7d557e9ef39c2653defd7c3bf5281b56"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nickcox/highwater/releases/download/v0.5.5/highwater-0.5.5-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e853738241c4cf1abcd590dad4955419ebc3ddaa6fbdf77d4fd74ecae2fb5eda"
    end
    on_intel do
      url "https://github.com/nickcox/highwater/releases/download/v0.5.5/highwater-0.5.5-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "60f81fdb5fe6d708517c4831bb5543676a301df0fddc3327510665150eca207a"
    end
  end

  def install
    bin.install "highwater"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/highwater --version")
  end
end

class Highwater < Formula
  desc "Local viewer for how coding-agent sessions use their context window"
  homepage "https://github.com/nickcox/highwater"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nickcox/highwater/releases/download/v0.4.0/highwater-0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "af372d6e188b99c454f87b65eda36ac9684822c880135a66dddf830795d81763"
    end
    on_intel do
      url "https://github.com/nickcox/highwater/releases/download/v0.4.0/highwater-0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "8481e254806f45f73814befbd1094d5cb0058f8be5a06c55dd6598f17f906bc8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nickcox/highwater/releases/download/v0.4.0/highwater-0.4.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5f3e9b6e4601770a5aa6c4b58c76cfb7ec6bffcacf22af12e21eae85271589cd"
    end
    on_intel do
      url "https://github.com/nickcox/highwater/releases/download/v0.4.0/highwater-0.4.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0a8247909b92955b71a7c33e4ecfc4dfed4752faa9860548aa8e70aae9ead715"
    end
  end

  def install
    bin.install "highwater"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/highwater --version")
  end
end

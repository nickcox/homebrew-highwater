class Highwater < Formula
  desc "Local viewer for how coding-agent sessions use their context window"
  homepage "https://github.com/nickcox/highwater"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nickcox/highwater/releases/download/v0.5.3/highwater-0.5.3-aarch64-apple-darwin.tar.gz"
      sha256 "7cd0ea04cc62ce8efbbbd456597159847cf32a846a702c8d6b0b52ef0b2a0b0d"
    end
    on_intel do
      url "https://github.com/nickcox/highwater/releases/download/v0.5.3/highwater-0.5.3-x86_64-apple-darwin.tar.gz"
      sha256 "e6d24ce047dcc658d5cbf603ecb64be44a7ca4ca429616bbe6e126a360904d0e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nickcox/highwater/releases/download/v0.5.3/highwater-0.5.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3589daa2bbd0fa317a954d545ac3266443ffacae646fb0f481495409e5f683d0"
    end
    on_intel do
      url "https://github.com/nickcox/highwater/releases/download/v0.5.3/highwater-0.5.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e762df86ff32883c7ec3e9fd41e1f7c0d5184af3da296aca2dd9ef86d0ed6c12"
    end
  end

  def install
    bin.install "highwater"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/highwater --version")
  end
end

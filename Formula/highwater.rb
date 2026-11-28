class Highwater < Formula
  desc "Local viewer for how coding-agent sessions use their context window"
  homepage "https://github.com/nickcox/highwater"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nickcox/highwater/releases/download/v0.6.0/highwater-0.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "31b677d4f3660590594ea58a3256eb276dd344c0368f54665d73fe719eba6be0"
    end
    on_intel do
      url "https://github.com/nickcox/highwater/releases/download/v0.6.0/highwater-0.6.0-x86_64-apple-darwin.tar.gz"
      sha256 "1c7779fd4a1a2fcab5fea2c3d48e279e0f5232081e7ed954fffc7120e9b5aa36"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nickcox/highwater/releases/download/v0.6.0/highwater-0.6.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9df80486b2ff6a057ef36afae9c6d2ae0e737577e6e17b3226a1c5bde1e8532b"
    end
    on_intel do
      url "https://github.com/nickcox/highwater/releases/download/v0.6.0/highwater-0.6.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0865e3ed73f674dd0771d4e29c886fc5a29693bf4cfecb669a98659cac87bc0a"
    end
  end

  def install
    bin.install "highwater"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/highwater --version")
  end
end

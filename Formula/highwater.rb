class Highwater < Formula
  desc "Local viewer for how coding-agent sessions use their context window"
  homepage "https://github.com/nickcox/highwater"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nickcox/highwater/releases/download/v0.5.6/highwater-0.5.6-aarch64-apple-darwin.tar.gz"
      sha256 "b99ed10aa4344033c3d180ed19a39a570d5a1cf16b300850380fbe5aef93bbd3"
    end
    on_intel do
      url "https://github.com/nickcox/highwater/releases/download/v0.5.6/highwater-0.5.6-x86_64-apple-darwin.tar.gz"
      sha256 "c4b4d330205b6e5a96a4ae9cc6fe8524e1fafb7450037853eea3918be4619e2b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nickcox/highwater/releases/download/v0.5.6/highwater-0.5.6-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7317ce9556b1e16dd80c0178d3b3fc89f373e5681e6132f9ef2b4a7ce23a1937"
    end
    on_intel do
      url "https://github.com/nickcox/highwater/releases/download/v0.5.6/highwater-0.5.6-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "76b1c31d17e09a94ca1cd6eeda27c41d5faad42ee65328175a9d6f572abf8cfe"
    end
  end

  def install
    bin.install "highwater"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/highwater --version")
  end
end

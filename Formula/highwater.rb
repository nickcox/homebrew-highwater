class Highwater < Formula
  desc "Local viewer for how coding-agent sessions use their context window"
  homepage "https://github.com/nickcox/highwater"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nickcox/highwater/releases/download/v0.5.2/highwater-0.5.2-aarch64-apple-darwin.tar.gz"
      sha256 "6372dca4eaf34a22d7aaaa1c6b624ca5b98b1371888630a45320263354ee1dce"
    end
    on_intel do
      url "https://github.com/nickcox/highwater/releases/download/v0.5.2/highwater-0.5.2-x86_64-apple-darwin.tar.gz"
      sha256 "7601bb0aaa5162600f724fedb4441d71c41d272844a56da6ceb075a8aa09e890"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nickcox/highwater/releases/download/v0.5.2/highwater-0.5.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1a406f14a12345c72911d305e5fc935cdb71bc7afcdaaa9d82faa953b7fc5479"
    end
    on_intel do
      url "https://github.com/nickcox/highwater/releases/download/v0.5.2/highwater-0.5.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "30b35ff7c5f5f649de49e13e8fbfee620a21e74d010e1cf546ccae7967c1dfd4"
    end
  end

  def install
    bin.install "highwater"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/highwater --version")
  end
end

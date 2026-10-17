class Highwater < Formula
  desc "Local viewer for how coding-agent sessions use their context window"
  homepage "https://github.com/nickcox/highwater"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nickcox/highwater/releases/download/v0.2.0/highwater-0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "eb1c9041d7711d962f6f8fabf6bd22d7045a4abac24d5980076bb2786ac1007b"
    end
    on_intel do
      url "https://github.com/nickcox/highwater/releases/download/v0.2.0/highwater-0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "77bed1eb71898ca5ace03af1f1678dad8a515bf68e75fd4a7ca94317190549ac"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nickcox/highwater/releases/download/v0.2.0/highwater-0.2.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ea2f5ea96861d1b68b418d98844bca6154356fd479a45049882c987066b2797d"
    end
    on_intel do
      url "https://github.com/nickcox/highwater/releases/download/v0.2.0/highwater-0.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3b48a50617f081912bd432dd65864c35744c4ebb3084a44cc07313914dbf4538"
    end
  end

  def install
    bin.install "highwater"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/highwater --version")
  end
end

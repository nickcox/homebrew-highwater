class Highwater < Formula
  desc "Local viewer for how coding-agent sessions use their context window"
  homepage "https://github.com/nickcox/highwater"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nickcox/highwater/releases/download/v0.5.1/highwater-0.5.1-aarch64-apple-darwin.tar.gz"
      sha256 "8e3dcd0a47cf13ac84e7cb074a351c850c335244ccb370fb915695b62f8d97a6"
    end
    on_intel do
      url "https://github.com/nickcox/highwater/releases/download/v0.5.1/highwater-0.5.1-x86_64-apple-darwin.tar.gz"
      sha256 "e9683730bb7b0e98a26221e40c438ecf5ba980cac58bd3f63c14045f6bfd1c63"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nickcox/highwater/releases/download/v0.5.1/highwater-0.5.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "242da295bb63a8a9092b606fb8b7a4448a3aee4717f888f9beeb26e4d19cd9a2"
    end
    on_intel do
      url "https://github.com/nickcox/highwater/releases/download/v0.5.1/highwater-0.5.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8012c3a54dd703550278463312ef73123f0e11d82b2d680463e6efd133432ac7"
    end
  end

  def install
    bin.install "highwater"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/highwater --version")
  end
end

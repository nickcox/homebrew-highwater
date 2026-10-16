class Highwater < Formula
  desc "Local viewer for how coding-agent sessions use their context window"
  homepage "https://github.com/nickcox/highwater"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nickcox/highwater/releases/download/v0.1.0/highwater-0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "6448159f7d8f256a862a62a4f7ff52cc42191f2acc207763c7dee4f22ee562cf"
    end
    on_intel do
      url "https://github.com/nickcox/highwater/releases/download/v0.1.0/highwater-0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "9f16a5a8f63d4291fd73226cd31613a2c9739ed31a668edae1af960e602f410e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nickcox/highwater/releases/download/v0.1.0/highwater-0.1.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b3f7ce67cf9729ff167549c4f755e1e685ff51e282ace412f2bac260c6e3aad7"
    end
    on_intel do
      url "https://github.com/nickcox/highwater/releases/download/v0.1.0/highwater-0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e10176bc20547383161dbafdfc5ec5b37a2dc4f727a6ad66a7d5ca3037bb1a21"
    end
  end

  def install
    bin.install "highwater"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/highwater --version")
  end
end

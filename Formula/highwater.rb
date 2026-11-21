class Highwater < Formula
  desc "Local viewer for how coding-agent sessions use their context window"
  homepage "https://github.com/nickcox/highwater"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nickcox/highwater/releases/download/v0.5.4/highwater-0.5.4-aarch64-apple-darwin.tar.gz"
      sha256 "eb0a7758ac6405c4eb37d2d6c384875539c94368eb816ec140d8e925c844bf9d"
    end
    on_intel do
      url "https://github.com/nickcox/highwater/releases/download/v0.5.4/highwater-0.5.4-x86_64-apple-darwin.tar.gz"
      sha256 "04e0da256e53520c9a962e1e3d07d315f0f6fdd67044d9261a1570fb609d9787"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nickcox/highwater/releases/download/v0.5.4/highwater-0.5.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e4474a58af1ec16f677cd181a6db6a898193fdf5964055eeafc676ceb5158eaf"
    end
    on_intel do
      url "https://github.com/nickcox/highwater/releases/download/v0.5.4/highwater-0.5.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2926ee06d92b30494320c70a34453f6b1701207fa403987b307a131c2fddbc4c"
    end
  end

  def install
    bin.install "highwater"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/highwater --version")
  end
end

class Highwater < Formula
  desc "Local viewer for how coding-agent sessions use their context window"
  homepage "https://github.com/nickcox/highwater"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nickcox/highwater/releases/download/v0.5.7/highwater-0.5.7-aarch64-apple-darwin.tar.gz"
      sha256 "dea0e420ce3476225de0b1e18e41422e8db52e2e5a7d74eed3ad8041eb90b0d4"
    end
    on_intel do
      url "https://github.com/nickcox/highwater/releases/download/v0.5.7/highwater-0.5.7-x86_64-apple-darwin.tar.gz"
      sha256 "e9570d88a6b61599077d6d7b64ef6508a6c752152ba961e537c0926dbc0fcae8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nickcox/highwater/releases/download/v0.5.7/highwater-0.5.7-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "745a26860633408b464b2878aab32b88562e97d00e76ab0fe5e8ba76fa8664a3"
    end
    on_intel do
      url "https://github.com/nickcox/highwater/releases/download/v0.5.7/highwater-0.5.7-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8c4aa9724b06af9f884a6f8238fc8b0c49ea96b9d7388250ca0465d35d29156a"
    end
  end

  def install
    bin.install "highwater"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/highwater --version")
  end
end

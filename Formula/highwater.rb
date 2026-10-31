class Highwater < Formula
  desc "Local viewer for how coding-agent sessions use their context window"
  homepage "https://github.com/nickcox/highwater"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nickcox/highwater/releases/download/v0.5.0/highwater-0.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "c76da8fbbe5a5ef18c20eab52f61691bc263f786ca0bc4c6cad8bbc2ae0b13fe"
    end
    on_intel do
      url "https://github.com/nickcox/highwater/releases/download/v0.5.0/highwater-0.5.0-x86_64-apple-darwin.tar.gz"
      sha256 "904a1fe8219bc3c94b7fcf1c9c21e4be61afca37e38ba90e94e96fc39533bffd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nickcox/highwater/releases/download/v0.5.0/highwater-0.5.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3f660139b581a6f35b1886636572027dda6a02424460889ee3265ec8f72c8b78"
    end
    on_intel do
      url "https://github.com/nickcox/highwater/releases/download/v0.5.0/highwater-0.5.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "00a200a1d25041271a12f56b312438ac8f64a49c7867b0b504b2ee0732875ed8"
    end
  end

  def install
    bin.install "highwater"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/highwater --version")
  end
end

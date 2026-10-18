class Highwater < Formula
  desc "Local viewer for how coding-agent sessions use their context window"
  homepage "https://github.com/nickcox/highwater"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nickcox/highwater/releases/download/v0.3.0/highwater-0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "b1b0bb2e93a668896166bd5cc0373e659c2c06557220bfd0b16b005f30d06acf"
    end
    on_intel do
      url "https://github.com/nickcox/highwater/releases/download/v0.3.0/highwater-0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "beebe6c022de54079ecd788f74a49ce5ed612c8a56b19b0316d7c6c97d482225"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nickcox/highwater/releases/download/v0.3.0/highwater-0.3.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "07850605bf0e7507cbb7350d4c1530498be6ef1f44fdfa825806c09a68cbc592"
    end
    on_intel do
      url "https://github.com/nickcox/highwater/releases/download/v0.3.0/highwater-0.3.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3e9bb901226c4efcec6a440877b21fc0439482b52c084d28268cb599242aaabb"
    end
  end

  def install
    bin.install "highwater"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/highwater --version")
  end
end

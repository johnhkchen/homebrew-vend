class Vend < Formula
  desc "Local-first runner for repeatable, gated AI-agent playbooks"
  homepage "https://github.com/johnhkchen/vend"
  version "0.4.0-rc.2"
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/johnhkchen/vend/releases/download/v0.4.0-rc.2/vend-cli-aarch64-apple-darwin.tar.xz"
    sha256 "cad1deb0c29edf141428bd0231a7cee779c8a46a167779b82c3dc93ec4ca4e84"
  end
  license "MIT"

  def install
    bin.install "vend"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vend --version")
  end
end

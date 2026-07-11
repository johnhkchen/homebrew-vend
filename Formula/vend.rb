class Vend < Formula
  desc "Local-first runner for repeatable, gated AI-agent playbooks"
  homepage "https://github.com/johnhkchen/vend"
  version "0.4.0-rc.1"
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/johnhkchen/vend/releases/download/v0.4.0-rc.1/vend-cli-aarch64-apple-darwin.tar.xz"
    sha256 "edfdb948309baeff6888b2a6dd5fcb6c2fd549321dd8838ed1409abeefdbc424"
  end
  license "MIT"

  def install
    bin.install "vend"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vend --version")
  end
end

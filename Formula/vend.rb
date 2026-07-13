class Vend < Formula
  desc "Local-first runner for repeatable, gated AI-agent playbooks"
  homepage "https://github.com/johnhkchen/vend"
  version "0.4.0-rc.6"
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/johnhkchen/vend/releases/download/v0.4.0-rc.6/vend-cli-aarch64-apple-darwin.tar.xz"
    sha256 "38cd09ec8bb4d0366e400ef1073543eb9b05d653219d7a12eb3f2cc8ca8b40e9"
  end
  license "MIT"

  def install
    bin.install "vend"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vend --version")
  end
end

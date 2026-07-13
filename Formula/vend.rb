class Vend < Formula
  desc "Local-first runner for repeatable, gated AI-agent playbooks"
  homepage "https://github.com/johnhkchen/vend"
  version "0.4.0-rc.5"
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/johnhkchen/vend/releases/download/v0.4.0-rc.5/vend-cli-aarch64-apple-darwin.tar.xz"
    sha256 "10fc6592036739c2c7f1c56ab7bcab79e91fc472f440a6852a6099bce4c4324f"
  end
  license "MIT"

  def install
    bin.install "vend"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vend --version")
  end
end

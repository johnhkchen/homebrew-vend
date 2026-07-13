class Vend < Formula
  desc "Local-first runner for repeatable, gated AI-agent playbooks"
  homepage "https://github.com/johnhkchen/vend"
  version "0.4.0"
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/johnhkchen/vend/releases/download/v0.4.0/vend-cli-aarch64-apple-darwin.tar.xz"
    sha256 "d0f482c00bf7847e432ab53ebff31a585949f78ea02e251b519429107251595b"
  end
  license "MIT"

  def install
    bin.install "vend"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vend --version")
  end
end

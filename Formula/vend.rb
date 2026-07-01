class Vend < Formula
  desc "Local-first runner for repeatable, gated AI-agent playbooks"
  homepage "https://github.com/johnhkchen/vend"
  version "0.2.3"
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/johnhkchen/vend/releases/download/v0.2.3/vend-cli-aarch64-apple-darwin.tar.xz"
    sha256 "b362d2e9989d411fc02c1a2f0ff4c88f8c38449c4890b8983be753e7ae5b782c"
  end
  license "MIT"

  def install
    bin.install "vend"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vend --version")
  end
end

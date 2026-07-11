class Vend < Formula
  desc "Local-first runner for repeatable, gated AI-agent playbooks"
  homepage "https://github.com/johnhkchen/vend"
  version "0.3.0"
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/johnhkchen/vend/releases/download/v0.3.0/vend-cli-aarch64-apple-darwin.tar.xz"
    sha256 "be0e8112a2f937c6badb0044bd4ffb063cf4536508489e1ea2dc23a8173d63aa"
  end
  license "MIT"

  def install
    bin.install "vend"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vend --version")
  end
end

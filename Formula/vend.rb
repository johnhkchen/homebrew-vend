class Vend < Formula
  desc "Local-first runner for repeatable, gated AI-agent playbooks"
  homepage "https://github.com/johnhkchen/vend"
  version "0.2.1"
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/johnhkchen/vend/releases/download/v0.2.1/vend-cli-aarch64-apple-darwin.tar.xz"
    sha256 "2af9687ef3fe7d770092e13e8bd91b9032c61e617886b50c59993cbf141d00e7"
  end
  license "MIT"

  def install
    bin.install "vend"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vend --version")
  end
end

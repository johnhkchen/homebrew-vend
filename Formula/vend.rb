class Vend < Formula
  desc "Local-first runner for repeatable, gated AI-agent playbooks"
  homepage "https://github.com/johnhkchen/vend"
  version "0.2.2"
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/johnhkchen/vend/releases/download/v0.2.2/vend-cli-aarch64-apple-darwin.tar.xz"
    sha256 "8d0e842f75c7c77421820584959356e7ba3620905baf2232d375c8e675b9c9eb"
  end
  license "MIT"

  def install
    bin.install "vend"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vend --version")
  end
end

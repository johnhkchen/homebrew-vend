class Vend < Formula
  desc "Local-first runner for repeatable, gated AI-agent playbooks"
  homepage "https://github.com/johnhkchen/vend"
  version "0.4.0-rc.3"
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/johnhkchen/vend/releases/download/v0.4.0-rc.3/vend-cli-aarch64-apple-darwin.tar.xz"
    sha256 "8c2f63cde46460a9ba4e8c2c90894d08fff5628bb76464dda5946a831381eb8e"
  end
  license "MIT"

  def install
    bin.install "vend"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vend --version")
  end
end

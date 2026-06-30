class Vend < Formula
  desc "Local-first runner for repeatable, gated AI-agent playbooks"
  homepage "https://github.com/johnhkchen/vend"
  version "0.2.0"
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/johnhkchen/vend/releases/download/v0.2.0/vend-cli-aarch64-apple-darwin.tar.xz"
    sha256 "96f7a39d794676f65c5ddc263511659a0fe5dfdb19b5d6a83bd79e36c01dcce2"
  end
  license "MIT"

  def install
    bin.install "vend"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vend --version")
  end
end

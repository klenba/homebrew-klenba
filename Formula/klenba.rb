# klenba's formula, for the tap klenba/homebrew-klenba. A release fills in the version
# and the tarball's SHA-256 (packaging/homebrew.sh) and pushes it there.
class Klenba < Formula
  desc "End-to-end encrypted file sync"
  homepage "https://dl.klenba.app/"
  url "https://dl.klenba.app/releases/0.1.8/klenba-0.1.8-macos-universal.tar.gz"
  version "0.1.8"
  sha256 "ee0978ff760e44b8fdf54b2108daad354726e7439c0c03d3bb542a07d05589b1"
  license :cannot_represent

  depends_on :macos

  def install
    bin.install "klenba"
    prefix.install "LICENSE", "THIRD-PARTY-NOTICES"
  end

  test do
    assert_match "klenba 0.1.8 (", shell_output("#{bin}/klenba --version")
  end
end

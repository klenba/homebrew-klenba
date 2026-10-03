# klenba's formula, for the tap klenba/homebrew-klenba. A release fills in the version
# and the tarball's SHA-256 (packaging/homebrew.sh) and pushes it there.
class Klenba < Formula
  desc "End-to-end encrypted file sync"
  homepage "https://dl.klenba.app/"
  url "https://dl.klenba.app/releases/0.1.1/klenba-0.1.1-macos-universal.tar.gz"
  version "0.1.1"
  sha256 "57c1fe15643d59a7e85d601a1f7cd6c2926da17465cf6c4a9afa5205adadacde"
  license :cannot_represent

  depends_on :macos

  def install
    bin.install "klenba"
    prefix.install "LICENSE", "THIRD-PARTY-NOTICES"
  end

  test do
    assert_match "klenba 0.1.1 (", shell_output("#{bin}/klenba --version")
  end
end

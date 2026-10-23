# klenba's formula, for the tap klenba/homebrew-klenba. A release fills in the version
# and the tarball's SHA-256 (packaging/homebrew.sh) and pushes it there.
class Klenba < Formula
  desc "End-to-end encrypted file sync"
  homepage "https://dl.klenba.app/"
  url "https://dl.klenba.app/releases/0.1.6/klenba-0.1.6-macos-universal.tar.gz"
  version "0.1.6"
  sha256 "c14b34453495907f6a72d4f5a0f2f34bbb66773fe9701fc5b8a8db122c3f8b92"
  license :cannot_represent

  depends_on :macos

  def install
    bin.install "klenba"
    prefix.install "LICENSE", "THIRD-PARTY-NOTICES"
  end

  test do
    assert_match "klenba 0.1.6 (", shell_output("#{bin}/klenba --version")
  end
end

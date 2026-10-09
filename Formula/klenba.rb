# klenba's formula, for the tap klenba/homebrew-klenba. A release fills in the version
# and the tarball's SHA-256 (packaging/homebrew.sh) and pushes it there.
class Klenba < Formula
  desc "End-to-end encrypted file sync"
  homepage "https://dl.klenba.app/"
  url "https://dl.klenba.app/releases/0.1.2/klenba-0.1.2-macos-universal.tar.gz"
  version "0.1.2"
  sha256 "c1af2e11a8bb3501c0d2efd5107992b1e268676f298c381edb521006bf2b73a6"
  license :cannot_represent

  depends_on :macos

  def install
    bin.install "klenba"
    prefix.install "LICENSE", "THIRD-PARTY-NOTICES"
  end

  test do
    assert_match "klenba 0.1.2 (", shell_output("#{bin}/klenba --version")
  end
end

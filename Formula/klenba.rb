# klenba's formula, for the tap klenba/homebrew-klenba. A release fills in the version
# and the tarball's SHA-256 (packaging/homebrew.sh) and pushes it there.
class Klenba < Formula
  desc "End-to-end encrypted file sync"
  homepage "https://dl.klenba.app/"
  url "https://dl.klenba.app/releases/0.1.0/klenba-0.1.0-macos-universal.tar.gz"
  version "0.1.0"
  sha256 "a9b4b3edf630edaab350123754041f581b914380516860b5da2e5b0a04220650"
  license :cannot_represent

  depends_on :macos

  def install
    bin.install "klenba"
    prefix.install "LICENSE", "THIRD-PARTY-NOTICES"
  end

  test do
    assert_match "klenba 0.1.0 (", shell_output("#{bin}/klenba --version")
  end
end

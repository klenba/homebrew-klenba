# klenba's formula, for the tap klenba/homebrew-klenba. A release fills in the version
# and the tarball's SHA-256 (packaging/homebrew.sh) and pushes it there.
class Klenba < Formula
  desc "End-to-end encrypted file sync"
  homepage "https://dl.klenba.app/"
  url "https://dl.klenba.app/releases/0.1.4/klenba-0.1.4-macos-universal.tar.gz"
  version "0.1.4"
  sha256 "12082705d6245863efe361ad421e3ef167ab8709bf4d2fc4650c9f895d6f328a"
  license :cannot_represent

  depends_on :macos

  def install
    bin.install "klenba"
    prefix.install "LICENSE", "THIRD-PARTY-NOTICES"
  end

  test do
    assert_match "klenba 0.1.4 (", shell_output("#{bin}/klenba --version")
  end
end

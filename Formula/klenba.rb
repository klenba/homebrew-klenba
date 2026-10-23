# klenba's formula, for the tap klenba/homebrew-klenba. A release fills in the version
# and the tarball's SHA-256 (packaging/homebrew.sh) and pushes it there.
class Klenba < Formula
  desc "End-to-end encrypted file sync"
  homepage "https://dl.klenba.app/"
  url "https://dl.klenba.app/releases/0.1.7/klenba-0.1.7-macos-universal.tar.gz"
  version "0.1.7"
  sha256 "88a0516ded46ef23d6a21b0d97f05ecd39e55f2845f29bb84d24078058ae2e75"
  license :cannot_represent

  depends_on :macos

  def install
    bin.install "klenba"
    prefix.install "LICENSE", "THIRD-PARTY-NOTICES"
  end

  test do
    assert_match "klenba 0.1.7 (", shell_output("#{bin}/klenba --version")
  end
end

# klenba's formula, for the tap klenba/homebrew-klenba. A release fills in the version
# and the tarball's SHA-256 (packaging/homebrew.sh) and pushes it there.
class Klenba < Formula
  desc "End-to-end encrypted file sync"
  homepage "https://dl.klenba.app/"
  url "https://dl.klenba.app/releases/0.1.3/klenba-0.1.3-macos-universal.tar.gz"
  version "0.1.3"
  sha256 "65383802ed2601553aec6d48c84cdb515dbfb7c7b1c24773df11c6f464fcdc7e"
  license :cannot_represent

  depends_on :macos

  def install
    bin.install "klenba"
    prefix.install "LICENSE", "THIRD-PARTY-NOTICES"
  end

  test do
    assert_match "klenba 0.1.3 (", shell_output("#{bin}/klenba --version")
  end
end

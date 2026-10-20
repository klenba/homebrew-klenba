# klenba's formula, for the tap klenba/homebrew-klenba. A release fills in the version
# and the tarball's SHA-256 (packaging/homebrew.sh) and pushes it there.
class Klenba < Formula
  desc "End-to-end encrypted file sync"
  homepage "https://dl.klenba.app/"
  url "https://dl.klenba.app/releases/0.1.5/klenba-0.1.5-macos-universal.tar.gz"
  version "0.1.5"
  sha256 "20528b02e8123960acd6aaee53d4530b9d0a6a2a3a2aaad49cfcb5fe9d64f4f0"
  license :cannot_represent

  depends_on :macos

  def install
    bin.install "klenba"
    prefix.install "LICENSE", "THIRD-PARTY-NOTICES"
  end

  test do
    assert_match "klenba 0.1.5 (", shell_output("#{bin}/klenba --version")
  end
end

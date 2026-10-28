# klenba's formula, for the tap klenba/homebrew-klenba. A release fills in the version
# and the tarball's SHA-256 (packaging/homebrew.sh) and pushes it there.
class Klenba < Formula
  desc "End-to-end encrypted file sync"
  homepage "https://dl.klenba.app/"
  url "https://dl.klenba.app/releases/0.1.9/klenba-0.1.9-macos-universal.tar.gz"
  version "0.1.9"
  sha256 "2338affbe12df615fe8990165de7d1a1882bd44eae0e6acc28b358946fe7a848"
  license :cannot_represent

  depends_on :macos

  def install
    bin.install "klenba"
    prefix.install "LICENSE", "THIRD-PARTY-NOTICES"
  end

  test do
    assert_match "klenba 0.1.9 (", shell_output("#{bin}/klenba --version")
  end
end

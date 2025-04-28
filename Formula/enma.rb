class Enma < Formula
  desc "Yet another integration software with file monitoring."
  homepage "https://github.com/magicdrive/enma"
  url "https://github.com/magicdrive/enma/releases/download/v0.1.0/enma_darwin_amd64.tar.gz"
  sha256 "PUT_YOUR_SHA256_HERE"
  license "MIT"

  def install
    bin.install "enma"
  end

  test do
    system "#{bin}/enma", "--version"
  end
end

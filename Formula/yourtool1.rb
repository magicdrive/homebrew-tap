class Yourtool1 < Formula
  desc "Description for yourtool1."
  homepage "https://github.com/magicdrive/yourtool1"
  url "https://github.com/magicdrive/yourtool1/releases/download/v0.1.0/yourtool1_darwin_amd64.tar.gz"
  sha256 "PUT_YOUR_SHA256_HERE"
  license "MIT"

  def install
    bin.install "yourtool1"
  end

  test do
    system "#{bin}/yourtool1", "--help"
  end
end

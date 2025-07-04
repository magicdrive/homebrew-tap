# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ark < Formula
  desc "Yet another alternate [directory | repository] represent text generator tool"
  homepage "https://github.com/magicdrive/ark"
  version "1.1.10"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/magicdrive/ark/releases/download/v1.1.10/ark_1.1.10_darwin_amd64.tar.gz"
      sha256 "f3c11a3f933e6122e42a852a788d69da17f17f1425b36c5a6027b4ec41e8b6d4"

      def install
        bin.install "ark"
        bash_completion.install "completions/bash/ark-completion.bash" => "ark"
        zsh_completion.install "completions/zsh/_ark" => "_ark"
        fish_completion.install "completions/fish/ark.fish" => "ark.fish"
      end
    end
    on_arm do
      url "https://github.com/magicdrive/ark/releases/download/v1.1.10/ark_1.1.10_darwin_arm64.tar.gz"
      sha256 "2bcc3439a305a888b11681dde3d7b966553d5793986569e7a8de07ab1716115b"

      def install
        bin.install "ark"
        bash_completion.install "completions/bash/ark-completion.bash" => "ark"
        zsh_completion.install "completions/zsh/_ark" => "_ark"
        fish_completion.install "completions/fish/ark.fish" => "ark.fish"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/magicdrive/ark/releases/download/v1.1.10/ark_1.1.10_linux_amd64.tar.gz"
        sha256 "d891ea8924e2a9ff1b3ce866e3e107c31e6ff076c4ad10f6b82f33b9fae3ac1a"

        def install
          bin.install "ark"
          bash_completion.install "completions/bash/ark-completion.bash" => "ark"
          zsh_completion.install "completions/zsh/_ark" => "_ark"
          fish_completion.install "completions/fish/ark.fish" => "ark.fish"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/magicdrive/ark/releases/download/v1.1.10/ark_1.1.10_linux_arm64.tar.gz"
        sha256 "9adfb4034f1d719618cf8fe70ffcfb537f127ea974b7d28272dec69e4ea1413c"

        def install
          bin.install "ark"
          bash_completion.install "completions/bash/ark-completion.bash" => "ark"
          zsh_completion.install "completions/zsh/_ark" => "_ark"
          fish_completion.install "completions/fish/ark.fish" => "ark.fish"
        end
      end
    end
  end

  test do
    system "#{bin}/ark", "--version"
  end
end

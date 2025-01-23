# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Pro < Formula
  desc ""
  homepage "https://github.com/wowu/pro"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/wowu/pro/releases/download/v0.4.0/pro-darwin-amd64"
      sha256 "7c60659aa76c74a942b9828eb35d09bac0a1579e7a1175380eb08c4488dcbae2"

      def install
        bin.install "pro-darwin-amd64" => "pro"
      end
    end
    on_arm do
      url "https://github.com/wowu/pro/releases/download/v0.4.0/pro-darwin-arm64"
      sha256 "f595c1bda4c2ca48afd358c656171367f03a95c822a17360f45545993533d6a0"

      def install
        bin.install "pro-darwin-arm64" => "pro"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/wowu/pro/releases/download/v0.4.0/pro-linux-amd64"
        sha256 "44c8cd78d8a35c51f069e024e914e17b6c40cebaa558dd20074324d3b274cc3b"

        def install
          bin.install "pro-linux-amd64" => "pro"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/wowu/pro/releases/download/v0.4.0/pro-linux-arm64"
        sha256 "6bf29845c9447be5eb9ce37cff32c26949d6a2fb529ada5f43b46c682fd4a3b9"

        def install
          bin.install "pro-linux-arm64" => "pro"
        end
      end
    end
  end
end

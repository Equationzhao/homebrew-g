class GLs < Formula
  desc "a powerfull cross-platform ls"
  homepage "g.equationzhao.space"
  url "https://github.com/Equationzhao/g/archive/refs/tags/v0.13.2.tar.gz" , :tag => "v0.13.2"
  sha256 "be8afefb7952c2e74127a55fdc0c056fadbd58e652957af1b9f913d0e0a82123"  
  license "MIT"

  depends_on "go" => :build

  def install
    system "go build -ldflags='-s -w'"
    bin.install "g"
  end
end

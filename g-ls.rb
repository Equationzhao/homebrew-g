class GLs < Formula
  desc "a powerfull cross-platform ls"
  homepage "g.equationzhao.space"
  url "https://github.com/Equationzhao/g/archive/refs/tags/v0.11.5.tar.gz" , :tag => "v0.11.5"
  sha256 "0488c5804f1c4d2662329656e1bc703f0003c374025f5af63ddb252241993c7a"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go build -ldflags='-s -w'"
    bin.install "g"
  end
end

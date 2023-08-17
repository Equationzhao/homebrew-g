class GLs < Formula
  desc "a powerfull cross-platform ls"
  homepage "g.equationzhao.space"
  url "https://github.com/Equationzhao/g/archive/refs/tags/v0.13.0.tar.gz" , :tag => "v0.13.0"
  sha256 "c45bd556f1f3343bbb260236ba780e9a69853b8bac0361111fe91688d696ded3"  
  license "MIT"

  depends_on "go" => :build

  def install
    system "go build -ldflags='-s -w'"
    bin.install "g"
  end
end

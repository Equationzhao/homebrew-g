class GLs < Formula
  desc "a powerfull cross-platform ls"
  homepage "g.equationzhao.space"
  url "https://github.com/Equationzhao/g/archive/refs/tags/v0.13.0.tar.gz" , :tag => "v0.13.0"
  sha256 "3331a2d5efdbe3c1c188f2eeda540ba6cae05ce7295360c8805121ce1a5d9813"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go build -ldflags='-s -w'"
    bin.install "g"
  end
end

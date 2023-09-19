class GLs < Formula
  desc "a powerfull cross-platform ls"
  homepage "g.equationzhao.space"
  url "https://github.com/Equationzhao/g/archive/refs/tags/v0.15.0.tar.gz" , :tag => "v0.15.0"
  sha256 "8bae3c62a81e4b205c05f8bc5023e264e14270156fb61ab14b85b0c0ea97b0c6"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go build -ldflags='-s -w'"
    bin.install "g"
  end
end

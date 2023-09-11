class GLs < Formula
  desc "a powerfull cross-platform ls"
  homepage "g.equationzhao.space"
  url "https://github.com/Equationzhao/g/archive/refs/tags/v0.14.1.tar.gz" , :tag => "v0.14.1"
  sha256 "432478b7b7770e4cb05174a5be544827d88bda9e1c0d6b673952d30b9489db6e"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go build -ldflags='-s -w'"
    bin.install "g"
  end
end

class GLs < Formula
  desc "a powerfull cross-platform ls"
  homepage "g.equationzhao.space"
  url "https://github.com/Equationzhao/g/archive/refs/tags/v0.14.0.tar.gz" , :tag => "v0.14.0"
  sha256 "3bbe10a755005e6e2e9ad64a54035dff8014b639a39623d0a7503fa690aa4b23"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go build -ldflags='-s -w'"
    bin.install "g"
  end
end

class GLs < Formula
  desc "a powerfull cross-platform ls"
  homepage "g.equationzhao.space"
  url "https://github.com/Equationzhao/g/archive/refs/tags/v0.16.0.tar.gz" , :tag => "v0.16.0"
  sha256 "d67812907da591aed132ec0190461a007f9962284ca2c40e66bb123a59041445"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go build -ldflags='-s -w'"
    bin.install "g"
  end
end

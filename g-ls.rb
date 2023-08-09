class GLs < Formula
  desc "a powerfull cross-platform ls"
  homepage "g.equationzhao.space"
  url "https://github.com/Equationzhao/g/archive/refs/tags/v0.11.4.tar.gz"
  sha256 "bc546e9593bdc702355cafcf7ba12f28fe08a7c8771c4e3cafac7e7ca78a32d7"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go build -ldflags='-s -w'"
    bin.install "g"
  end
end

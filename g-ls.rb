class GLs < Formula
  desc "a powerfull cross-platform ls"
  homepage "g.equationzhao.space"
  url "https://github.com/Equationzhao/g/archive/refs/tags/v0.12.0.tar.gz" , :tag => "v0.12.0"
  sha256 "1e915c50bef9ac916a99082a999edea72a731180a5d015be5319cd846e378e20"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go build -ldflags='-s -w'"
    bin.install "g"
  end
end

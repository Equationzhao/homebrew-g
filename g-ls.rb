class GLs < Formula
  desc "Powerfull cross-platform ls"
  homepage "https://g.equationzhao.space"
  url "https://github.com/Equationzhao/g/archive/refs/tags/v0.21.1.tar.gz", tag: "v0.21.1"
  sha256 "a52f3bd6b583dd824d0507fa4a0607dfe4bb0c76f1c8168b368bd451d44df8cd"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go build -ldflags='-s -w'"
    bin.install "g"
  end

  test do
    output = shell_output("#{bin}/g -v | grep -E 'Version\\s*[0-9.]*' | grep -v 'Go Version' | awk '{print $3}'")
    assert_match "0.21.1", output
  end
end

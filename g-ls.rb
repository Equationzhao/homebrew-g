class GLs < Formula
  desc "Powerfull cross-platform ls"
  homepage "https://g.equationzhao.space"
  url "https://github.com/Equationzhao/g/archive/refs/tags/v0.22.1.tar.gz", tag: "v0.22.1"
  sha256 "71e98435dc0300082a4b2e11c4c8e9573cd956d6b8891ac55cb174054fceaa4e"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go build -ldflags='-s -w'"
    bin.install "g"
  end

  test do
    output = shell_output("#{bin}/g -v | grep -E 'Version\\s*[0-9.]*' | grep -v 'Go Version' | awk '{print $3}'")
    assert_match "0.22.1", output
  end
end

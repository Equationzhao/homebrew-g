class GLs < Formula
  desc "Powerfull cross-platform ls"
  homepage "https://g.equationzhao.space"
  url "https://github.com/Equationzhao/g/archive/refs/tags/v0.23.0.tar.gz", tag: "v0.23.0"
  sha256 "72b0a0e6bdfd54c6148ec70daa26a5ab854787b9e0aefe93afa625fc28cc0b53"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go build -ldflags='-s -w'"
    bin.install "g"
  end

  test do
    output = shell_output("#{bin}/g -v | grep -E 'Version\\s*[0-9.]*' | grep -v 'Go Version' | awk '{print $3}'")
    assert_match "0.23.0", output
  end
end

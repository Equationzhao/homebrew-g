class GLs < Formula
  desc "Powerfull cross-platform ls"
  homepage "https://g.equationzhao.space"
  url "https://github.com/Equationzhao/g/archive/refs/tags/v0.18.0.tar.gz", tag: "v0.18.0"
  sha256 "967867a33b518d5b6c78b949e80b67e7b804280131f62c9b3aed59d1f2df65f8"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go build -ldflags='-s -w'"
    bin.install "g"
  end

  test do
    output = shell_output("#{bin}/g -v | grep -E 'Version\\s*[0-9.]*' | grep -v 'Go Version' | awk '{print $3}'")
    assert_match "0.18.0", output
  end
end

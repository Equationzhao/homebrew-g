class GLs < Formula
  desc "Powerfull cross-platform ls"
  homepage "https://g.equationzhao.space"
  url "https://github.com/Equationzhao/g/archive/refs/tags/v0.25.1.tar.gz", tag: "v0.25.1"
  sha256 "67e066e4437eb432c76b0ca31f366cdd1d56380db93d1df1d9b75670892c5691"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go build -ldflags='-s -w'"
    bin.install "g"
  end

  test do
    output = shell_output("#{bin}/g -v | grep -E 'Version\\s*[0-9.]*' | grep -v 'Go Version' | awk '{print $3}'")
    assert_match "0.25.1", output
  end
end

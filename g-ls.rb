class GLs < Formula
  desc "Powerful and cross-platform ls"
  homepage "https://g.equationzhao.space"
  url "https://github.com/Equationzhao/g/archive/refs/tags/v0.26.0.tar.gz", tag: "v0.26.0"
  sha256 "d0f86bf45ecbaa12d6f3e5cf73686081025c4adfd6251792e751a85f203bcf2f"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go build -ldflags='-s -w'"
    bin.install "g"

    man1.install buildpath.glob("man/*.1.gz")
    zsh_completion.install "completions/zsh/_g"
  end

  test do
    output = shell_output("#{bin}/g -v | grep -E 'Version\\s*[0-9.]*' | grep -v 'Go Version' | awk '{print $3}'")
    assert_match "0.26.0", output
    touch "test.txt"
    assert_match "test.txt", shell_output("#{bin}/g --no-config --hyperlink=never --color=never --no-icon .")
  end
end


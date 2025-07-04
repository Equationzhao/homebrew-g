class GLs < Formula
  desc "Powerful and cross-platform ls"
  homepage "https://g.equationzhao.space"
  url "https://github.com/Equationzhao/g/archive/refs/tags/v0.31.0.tar.gz", tag: "v0.31.0"
  sha256 "122ca7ebf32ab2aada05cd513d44b55082d9bcfa9b890ee0ff60fdebfea06d0c"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go build -ldflags='-s -w'" -tags="fuzzy mounts"
    bin.install "g"

    man1.install buildpath.glob("man/*.1.gz")
    zsh_completion.install "completions/zsh/_g"
  end

  test do
    output = shell_output("#{bin}/g -v | grep -E 'Version\\s*[0-9.]*' | grep -v 'Go Version' | awk '{print $3}'")
    assert_match "0.31.0", output
    touch "test.txt"
    assert_match "test.txt", shell_output("#{bin}/g --no-config --hyperlink=never --color=never --no-icon .")
  end
end


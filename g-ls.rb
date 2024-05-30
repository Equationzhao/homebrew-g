class GLs < Formula
  desc "Powerful and cross-platform ls"
  homepage "https://g.equationzhao.space"
  url "https://github.com/Equationzhao/g/archive/refs/tags/v0.28.0.tar.gz", tag: "v0.28.0"
  sha256 "ee6465c34b1cdf261c2f7831972c1e81faa6c93cbbb2c1175c52e2a35b869a3f"
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
    assert_match "0.28.0", output
    touch "test.txt"
    assert_match "test.txt", shell_output("#{bin}/g --no-config --hyperlink=never --color=never --no-icon .")
  end
end


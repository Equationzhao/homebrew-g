class GLs < Formula
  desc "Powerful and cross-platform ls"
  homepage "https://g.equationzhao.space"
  url "https://github.com/Equationzhao/g/archive/refs/tags/v0.28.2.tar.gz", tag: "v0.28.2"
  sha256 "05df40665ea8c402c9d76b29269edb721758e9913bc03d173e7e84fa7a0a2ab6"
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
    assert_match "0.28.2", output
    touch "test.txt"
    assert_match "test.txt", shell_output("#{bin}/g --no-config --hyperlink=never --color=never --no-icon .")
  end
end


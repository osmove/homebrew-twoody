class Twoody < Formula
  desc "Run your computer's AI models from the terminal, with an OpenAI-compatible local API"
  homepage "https://twoody.com"
  url "https://registry.npmjs.org/twoody/-/twoody-0.2.0.tgz"
  sha256 "4b6ed85e61f911f521490e70088461ac29db2009a408a78065e26645571ffdbc"
  license :cannot_represent

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/twoody --version")
  end
end

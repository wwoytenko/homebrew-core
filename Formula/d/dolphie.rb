class Dolphie < Formula
  include Language::Python::Virtualenv

  desc "Feature-rich top tool for monitoring MySQL"
  homepage "https://github.com/charles-001/dolphie"
  url "https://files.pythonhosted.org/packages/ab/37/61ae4b07e2107c70f6756279932d82a4c243b2c8ab21b680687deeffce56/dolphie-4.2.2.tar.gz"
  sha256 "f8727d86e885cc51d66b7afef747b43ad30000f9d7b22d232de928a667ca4c3a"
  license "GPL-3.0-or-later"

  bottle do
    rebuild 1
    sha256 cellar: :any_skip_relocation, arm64_sonoma:   "9710bb91680c7e46b8b61ac2e13e61942d0d7cf3eb3fdcd0322e1afe77ee1750"
    sha256 cellar: :any_skip_relocation, arm64_ventura:  "81cdf7d30f3813b35c0d243c336d618827c6c7579758ff9d541c1b163f4dd362"
    sha256 cellar: :any_skip_relocation, arm64_monterey: "9c5589a8b89bf0307dc35e16182ba590cc9d9460e7d044d73eaba84d8364ac14"
    sha256 cellar: :any_skip_relocation, sonoma:         "2c0f25d83c89f3bdda4076a07f6c562b974c6f2303ce921e83a33464a67ee269"
    sha256 cellar: :any_skip_relocation, ventura:        "f4bf8ec7a2be6830baaf518e97b1ae195c97d7e61e6ee6870f5f0507c30d51b9"
    sha256 cellar: :any_skip_relocation, monterey:       "3c1673485c6197fbe42d573fe0bc2a3b3be4e9a99710a041a02084bb20ea1faa"
    sha256 cellar: :any_skip_relocation, x86_64_linux:   "0d80c16f7e0a645897c66989c459b7c87a693343a5eeffc74d7adc592f2e6457"
  end

  depends_on "python-certifi"
  depends_on "python-cryptography"
  depends_on "python@3.12"

  resource "charset-normalizer" do
    url "https://files.pythonhosted.org/packages/63/09/c1bc53dab74b1816a00d8d030de5bf98f724c52c1635e07681d312f20be8/charset-normalizer-3.3.2.tar.gz"
    sha256 "f30c3cb33b24454a82faecaf01b19c18562b1e89558fb6c56de4d9118a032fd5"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/bf/3f/ea4b9117521a1e9c50344b909be7886dd00a519552724809bb1f486986c2/idna-3.6.tar.gz"
    sha256 "9ecdbbd083b06798ae1e86adcbfe8ab1479cf864e4ee30fe4e46a003d12491ca"
  end

  resource "linkify-it-py" do
    url "https://files.pythonhosted.org/packages/2a/ae/bb56c6828e4797ba5a4821eec7c43b8bf40f69cda4d4f5f8c8a2810ec96a/linkify-it-py-2.0.3.tar.gz"
    sha256 "68cda27e162e9215c17d786649d1da0021a451bdc436ef9e0fa0ba5234b9b048"
  end

  resource "markdown-it-py" do
    url "https://files.pythonhosted.org/packages/38/71/3b932df36c1a044d397a1f92d1cf91ee0a503d91e470cbd670aa66b07ed0/markdown-it-py-3.0.0.tar.gz"
    sha256 "e3f60a94fa066dc52ec76661e37c851cb232d92f9886b15cb560aaada2df8feb"
  end

  resource "mdit-py-plugins" do
    url "https://files.pythonhosted.org/packages/b4/db/61960d68d5c39ff0dd48cb799a39ae4e297f6e9b96bf2f8da29d897fba0c/mdit_py_plugins-0.4.0.tar.gz"
    sha256 "d8ab27e9aed6c38aa716819fedfde15ca275715955f8a185a8e1cf90fb1d2c1b"
  end

  resource "mdurl" do
    url "https://files.pythonhosted.org/packages/d6/54/cfe61301667036ec958cb99bd3efefba235e65cdeb9c84d24a8293ba1d90/mdurl-0.1.2.tar.gz"
    sha256 "bb413d29f5eea38f31dd4754dd7377d4465116fb207585f97bf925588687c1ba"
  end

  resource "myloginpath" do
    url "https://files.pythonhosted.org/packages/21/30/9acf030d204770c1134e130e8eb1293ce5ecd6a72046aaca68fbd76ead00/myloginpath-0.0.4.tar.gz"
    sha256 "c44b8d11e8f35a02eeac4b88bf244203c09cc496bfa19ce99a79561c038f9d09"
  end

  resource "packaging" do
    url "https://files.pythonhosted.org/packages/fb/2b/9b9c33ffed44ee921d0967086d653047286054117d584f1b1a7c22ceaf7b/packaging-23.2.tar.gz"
    sha256 "048fb0e9405036518eaaf48a55953c750c11e1a1b68e0dd1a9d62ed0c092cfc5"
  end

  resource "plotext" do
    url "https://files.pythonhosted.org/packages/27/d7/58f5ec766e41f8338f04ec47dbd3465db04fbe2a6107bca5f0670ced253a/plotext-5.2.8.tar.gz"
    sha256 "319a287baabeb8576a711995f973a2eba631c887aa6b0f33ab016f12c50ffebe"
  end

  resource "pygments" do
    url "https://files.pythonhosted.org/packages/55/59/8bccf4157baf25e4aa5a0bb7fa3ba8600907de105ebc22b0c78cfbf6f565/pygments-2.17.2.tar.gz"
    sha256 "da46cec9fd2de5be3a8a784f434e4c4ab670b4ff54d605c4c2717e9d49c4c367"
  end

  resource "pymysql" do
    url "https://files.pythonhosted.org/packages/41/9d/ee68dee1c8821c839bb31e6e5f40e61035a5278f7c1307dde758f0c90452/PyMySQL-1.1.0.tar.gz"
    sha256 "4f13a7df8bf36a51e81dd9f3605fede45a4878fe02f9236349fd82a3f0612f96"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/9d/be/10918a2eac4ae9f02f6cfe6414b7a155ccd8f7f9d4380d62fd5b955065c3/requests-2.31.0.tar.gz"
    sha256 "942c5a758f98d790eaed1a29cb6eefc7ffb0d1cf7af05c3d2791656dbd6ad1e1"
  end

  resource "rich" do
    url "https://files.pythonhosted.org/packages/a7/ec/4a7d80728bd429f7c0d4d51245287158a1516315cadbb146012439403a9d/rich-13.7.0.tar.gz"
    sha256 "5cb5123b5cf9ee70584244246816e9114227e0b98ad9176eede6ad54bf5403fa"
  end

  resource "sqlparse" do
    url "https://files.pythonhosted.org/packages/65/16/10f170ec641ed852611b6c9441b23d10b5702ab5288371feab3d36de2574/sqlparse-0.4.4.tar.gz"
    sha256 "d446183e84b8349fa3061f0fe7f06ca94ba65b426946ffebe6e3e8295332420c"
  end

  resource "textual" do
    url "https://files.pythonhosted.org/packages/8f/d3/b97d99dbcf86d4a1d8a51d5ab021e8cc5831703ea34abaeba30e354addce/textual-0.49.0.tar.gz"
    sha256 "a66f981bde8f64c5cbb524d029946136d85602e82b595f4f5793f7bdc2e965b7"
  end

  resource "textual-autocomplete" do
    url "https://files.pythonhosted.org/packages/c3/4f/6c5917fdf9bfa0c18dfd3828ac70df6b5ddee9dd3b403d774447e1c0fec5/textual_autocomplete-2.1.0b0.tar.gz"
    sha256 "ba31da6e9b77e4c35323c267f958f0b90e1c2ddeca9c825c7d6c29d4d33893ce"
  end

  resource "typing-extensions" do
    url "https://files.pythonhosted.org/packages/0c/1d/eb26f5e75100d531d7399ae800814b069bc2ed2a7410834d57374d010d96/typing_extensions-4.9.0.tar.gz"
    sha256 "23478f88c37f27d76ac8aee6c905017a143b0b1b886c3c9f66bc2fd94f9f5783"
  end

  resource "uc-micro-py" do
    url "https://files.pythonhosted.org/packages/91/7a/146a99696aee0609e3712f2b44c6274566bc368dfe8375191278045186b8/uc-micro-py-1.0.3.tar.gz"
    sha256 "d321b92cff673ec58027c04015fcaa8bb1e005478643ff4a500882eaab88c48a"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/7a/50/7fd50a27caa0652cd4caf224aa87741ea41d3265ad13f010886167cfcc79/urllib3-2.2.1.tar.gz"
    sha256 "d0570876c61ab9e520d776c38acbbb5b05a776d3f9ff98a5c8fd5162a444cf19"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    # Fails in Linux CI with "ParseError: end of file reached"
    # See https://github.com/Homebrew/homebrew-core/pull/152912#issuecomment-1787257320
    return if OS.linux? && ENV["HOMEBREW_GITHUB_ACTIONS"]

    output = shell_output("#{bin}/dolphie mysql://user:password@host:port 2>&1")
    assert_match "Invalid URI: Port could not be cast to integer value as 'port'", output

    assert_match version.to_s, shell_output("#{bin}/dolphie --version")
  end
end

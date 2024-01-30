class Trufflehog < Formula
  desc "Find and verify credentials"
  homepage "https://trufflesecurity.com/"
  url "https://github.com/trufflesecurity/trufflehog/archive/refs/tags/v3.66.2.tar.gz"
  sha256 "aab4909a32ba2df14924dccd1ff35d6f29c6314b559f140b0053dbb0811f3d17"
  # upstream license ask, https://github.com/trufflesecurity/trufflehog/issues/1446
  license "AGPL-3.0-only"
  head "https://github.com/trufflesecurity/trufflehog.git", branch: "main"

  bottle do
    sha256 cellar: :any_skip_relocation, arm64_sonoma:   "c68a8d180ea7ae3ae675c90384f98616b12e4eaad39455163823cdcab5809f7d"
    sha256 cellar: :any_skip_relocation, arm64_ventura:  "1ff3b52515c88d58ff270d4e697ffd2c942a7896f3761d5c1422a4524133a781"
    sha256 cellar: :any_skip_relocation, arm64_monterey: "e74cd4169c4839738a09317e0958a44f4e74a9ddbcfc37b546c2586809f82343"
    sha256 cellar: :any_skip_relocation, sonoma:         "3fdcd4d9103e9fb85973d6234bce50b8b1697dd8732081b34c5f2258e36a80ea"
    sha256 cellar: :any_skip_relocation, ventura:        "82770c103f92828fa80a1998f270aae85f75ebc6eb6dc990236c12e36f92badd"
    sha256 cellar: :any_skip_relocation, monterey:       "af7499c7f011085c40183df3012f4be01caa04596abda90c427eb1280d37f5e6"
    sha256 cellar: :any_skip_relocation, x86_64_linux:   "280a58ef9fa01d8653b9eff217be3b50d824128383b8733815715fa17245f8ef"
  end

  depends_on "go" => :build

  def install
    ldflags = "-s -w -X github.com/trufflesecurity/trufflehog/v3/pkg/version.BuildVersion=#{version}"
    system "go", "build", *std_go_args(ldflags: ldflags)
  end

  test do
    repo = "https://github.com/trufflesecurity/test_keys"
    output = shell_output("#{bin}/trufflehog git #{repo} --no-update --only-verified 2>&1")
    expected = "{\"chunks\": 0, \"bytes\": 0, \"verified_secrets\": 0, \"unverified_secrets\": 0, \"scan_duration\":"
    assert_match expected, output

    assert_match version.to_s, shell_output("#{bin}/trufflehog --version 2>&1")
  end
end

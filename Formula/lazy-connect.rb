class LazyConnect < Formula
  desc "Shell function to fuzzy search an IPSec VPN by name and connect to it automatically."
  homepage "https://github.com/arunvelsriram/lazy-connect"
  url "https://github.com/arunvelsriram/lazy-connect/archive/v1.4.1.zip"
  sha256 "6d64543f733c94e70d1d305810348383a7698cf909aeca89669817b6bd51ce58"
  depends_on "fzf" => :recommended
  depends_on "oath-toolkit" => :recommended
  def install
    bin.install "lazy-connect"
  end
  test do
    assert_match "USAGE:", shell_output("#{bin}/lazy-connect -h", 1)
  end
end

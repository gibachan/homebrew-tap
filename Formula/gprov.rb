class Gprov < Formula
  desc "🔍 A command line tool for exploring provisioning profiles on your local machine."
  homepage "https://github.com/gibachan/gprov"
  url "https://github.com/gibachan/gprov/archive/0.0.2.tar.gz"
  sha256 "47be6d566adb88af5182f7e0f41e02f2dd39db78d785ddf5da72a4cba71ab05c"

  def install
    system "swift", "build",
           "--disable-sandbox",
           "-c", "release",
           "--build-path", buildpath.to_s

    bin.install buildpath/"release/gprov"
  end

  test do
    system "gprov", "-h"
  end
end

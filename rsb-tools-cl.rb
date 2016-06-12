require 'formula'

class RsbToolsCl < Formula
  homepage 'https://code.cor-lab.org/projects/rsb'
  url 'https://ci.cor-lab.org/job/rsb-tools-cl-0.13-macos/label=MAC_OS_mavericks_64bit/lastSuccessfulBuild/artifact/build/rsb', :using => :nounzip
  sha256 '002c8d6b4e7f8610d46eb2f62443233e8f91b141ba96e7a2991e8fa9f34f4282'
  version '0.13'

  def install
    bin.install 'rsb'
    ln_s bin/'rsb', bin/'rsb0.13'
  end

  def test
    system "rsb info", "-h"
  end
end

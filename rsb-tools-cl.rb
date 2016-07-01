require 'formula'

class RsbToolsCl < Formula
  homepage 'https://code.cor-lab.org/projects/rsb'
  url 'https://ci.cor-lab.org/job/rsb-tools-cl-0.13-macos/label=MAC_OS_mavericks_64bit/lastSuccessfulBuild/artifact/build/rsb', :using => :nounzip
  sha256 '84c594ae44af97620a1d636e4f68cb13e579c9d5fcd7da9637ae024440a15f54'
  version '0.13'

  def install
    bin.install 'rsb'
    ln_s bin/'rsb', bin/'rsb0.13'
  end

  def test
    system "rsb info", "-h"
  end
end

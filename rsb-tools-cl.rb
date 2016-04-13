require 'formula'

class RsbToolsCl < Formula
  homepage 'https://code.cor-lab.org/projects/rsb'
  url 'https://ci.cor-lab.org/job/rsb-tools-cl-0.13-macos/label=MAC_OS_mavericks_64bit/lastSuccessfulBuild/artifact/build/rsb', :using => :nounzip
  sha256 'ebb199b153b661ca1d182e4cbc1ad4e0cf31003a7bb87aee7c06a82e82a7b549'
  version '0.13'

  def install
    bin.install 'rsb'
    ln_s bin/'rsb', bin/'rsb0.13'
  end

  def test
    system "rsb info", "-h"
  end
end

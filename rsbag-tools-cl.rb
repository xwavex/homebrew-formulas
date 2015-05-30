require 'formula'

class RsbagToolsCl < Formula
  homepage 'https://code.cor-lab.org/projects/rsbag'
  url 'https://ci.cor-lab.org/job/rsbag-tools-cl-0.12-macos/label=MAC_OS_mavericks_64bit/lastSuccessfulBuild/artifact/build/rsbag', :using => :nounzip
  sha256 '7a058bd7e7e646c15d16ce2d83ea918d5964232dce98d237d7e18b1ea6939171'
  version '0.12'
  #head 'https://ci.cor-lab.org/view/rsx-trunk/job/rsbag-tools-cl-trunk-macos/label=MAC_OS_lion_64bit/lastSuccessfulBuild/artifact/build/rsbag', :using => :nounzip

  def install
    bin.install 'rsbag'
    ln_s bin/'rsbag', bin/'rs-bag0.12'
 #   ln_s bin/'rsbag', bin/'bag-cat'
 #   ln_s bin/'rsbag', bin/'bag-info'
 #   ln_s bin/'rsbag', bin/'bag-merge'
 #   ln_s bin/'rsbag', bin/'bag-record'
  end

  def test
    system "rsbag play", "-h"
  end
end

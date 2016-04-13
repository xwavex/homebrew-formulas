require 'formula'

class RsbagToolsCl < Formula
  homepage 'https://code.cor-lab.org/projects/rsbag'
  url 'https://ci.cor-lab.org/job/rsbag-tools-cl-0.13-macos/label=MAC_OS_mavericks_64bit/lastSuccessfulBuild/artifact/build/rsbag', :using => :nounzip
  sha256 '0a1934d053fc61e254ad73226171e7b07bb15c22e37c7b1cafb4661c608ab53c'
  version '0.13'
  #head 'https://ci.cor-lab.org/view/rsx-trunk/job/rsbag-tools-cl-trunk-macos/label=MAC_OS_lion_64bit/lastSuccessfulBuild/artifact/build/rsbag', :using => :nounzip

  def install
    bin.install 'rsbag'
    ln_s bin/'rsbag', bin/'rsbag0.13'
  end

  def test
    system "rsbag play", "-h"
  end
end

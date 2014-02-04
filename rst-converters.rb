require 'formula'

class RstConverters < Formula
  homepage 'https://toolkit.cit-ec.uni-bielefeld.de/components/generic/robotics-system-types'
  url 'https://code.cor-lab.de/git/rst.git.converters.git', :using => :git, :branch => '0.10'
  version '0.10'
  head 'https://code.cor-lab.de/git/rst.git.converters.git', :using => :git

  option :universal

  depends_on 'cmake' => :build
  depends_on 'rci' => :recommended
  depends_on 'opencv' => :optional
  depends_on 'rsb'
  depends_on 'rst-proto'

  def install
    ENV.universal_binary if build.universal?

    system "cmake", "./cpp", *std_cmake_args
    system "make install"
  end

  def test
    system "rsb-infocpp" + version + " --plugins | grep rstconverters"
  end
end

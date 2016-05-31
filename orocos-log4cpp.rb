class OrocosLog4cpp < Formula
  homepage "http://www.orocos.org"
  head "https://github.com/orocos-toolchain/log4cpp.git"

  depends_on "cmake"   => :build

  def install
  	args = std_cmake_args
    system "cmake", ".", *args
    system "make install"
  end
end
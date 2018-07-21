class OrocosLog4cpp < Formula
  homepage "http://www.orocos.org"
  url "https://github.com/orocos-toolchain/log4cpp.git", :branch => "toolchain-2.9"
  head "https://github.com/orocos-toolchain/log4cpp.git"
  version "2.9"

  depends_on "cmake"   => :build

  def install
  	args = std_cmake_args
    system "cmake", ".", *args
    system "make install"
  end
end
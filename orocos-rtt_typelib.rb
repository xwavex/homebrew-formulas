class OrocosRttTypelib < Formula
  homepage "http://www.orocos.org"
  url "https://github.com/orocos-toolchain/rtt_typelib.git", :branch => "toolchain-2.9"
  head "https://github.com/orocos-toolchain/rtt_typelib.git"
  version "2.9"

  depends_on "orocos-typelib"
  depends_on "cmake"   => :build

  def install
  	args = std_cmake_args
    system "cmake", ".", *args
    system "make install"
  end
end

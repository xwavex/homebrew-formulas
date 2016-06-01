class OrocosStdintTypekit < Formula
  homepage "http://www.orocos.org"
  head "https://github.com/orocos-toolchain/stdint_typekit.git"

  depends_on "orocos-rtt"
  depends_on "cmake"   => :build

  def install
  	args = std_cmake_args
    system "cmake", ".", *args
    system "make install"
  end
end

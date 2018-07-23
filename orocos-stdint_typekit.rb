class OrocosStdintTypekit < Formula
  homepage "http://www.orocos.org"
  url "https://github.com/xwavex/stdint_typekit.git"
  head "https://github.com/xwavex/stdint_typekit.git"
  version "2.9"

  depends_on "orocos-rtt"
  depends_on "cmake"   => :build

  def install
  	args = std_cmake_args
    system "cmake", ".", *args
    system "make install"
  end
end

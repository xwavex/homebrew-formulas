class OrocosTypelib < Formula
  homepage "http://www.orocos.org"
  head "https://github.com/orocos-toolchain/typelib.git"

  depends_on "antlr"
  depends_on "libxml2"
  depends_on "utilmm"
  depends_on "cmake"   => :build

  def install
  	args = std_cmake_args
    system "cmake", ".", *args
    system "make install"
  end
end

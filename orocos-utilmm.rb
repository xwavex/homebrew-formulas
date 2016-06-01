class OrocosUtilmm < Formula
  homepage "http://www.orocos.org"
  head "https://github.com/orocos-toolchain/utilmm.git"

  depends_on "cmake"   => :build

  def install
  	args = std_cmake_args
    system "cmake", ".", *args
    system "make install"
  end
end

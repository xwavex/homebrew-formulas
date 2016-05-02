class OrocosRtt < Formula
  homepage "http://www.orocos.org"
  head "https://github.com/orocos-toolchain/rtt.git"

  depends_on "cmake"   => :build

  def install
  	args = std_cmake_args + %W[
      -DENABLE_CORBA=OFF
    ]
    system "cmake", ".", *args
    system "make install"
  end
end

class OrocosRtt < Formula
  homepage "http://www.orocos.org"
  url "https://github.com/orocos-toolchain/rtt.git", :branch => "toolchain-2.9"
  head "https://github.com/orocos-toolchain/rtt.git"
  version "2.9"

  depends_on "boost"
  depends_on "cmake"   => :build

  def install
  	args = std_cmake_args + %W[
      -DENABLE_CORBA=OFF
    ]
    system "cmake", ".", *args
    system "make install"
  end
end

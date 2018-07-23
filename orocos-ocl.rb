class OrocosOcl < Formula
  homepage "http://www.orocos.org"
  url "https://github.com/orocos-toolchain/ocl.git", :branch => "toolchain-2.9"
  head "https://github.com/orocos-toolchain/ocl.git"
  version "2.9"

  depends_on "orocos-rtt"
  depends_on "orocos-log4cpp"
  depends_on "readline"
  depends_on "cmake"   => :build

  def install
  	args = std_cmake_args+ %W[
      -DBUILD_LUA_RTT=OFF
    ]
    system "cmake", ".", *args
    system "make install"
  end
end

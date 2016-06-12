class RttDotService < Formula
  homepage "https://github.com/orocos-toolchain/rtt_dot_service"
  url "https://github.com/orocos-toolchain/rtt_dot_service.git"

  depends_on "orocos-rtt"
  depends_on "orocos-ocl"
  depends_on "cmake"   => :build

  def install
    args = std_cmake_args+ %W[
      -DCMAKE_MODULE_PATH=#{HOMEBREW_PREFIX}/share/cmake/Modules
    ]
    system "cmake", ".", *args
    system "make install"
  end
end

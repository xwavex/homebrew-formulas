class RttRstRtTypekit < Formula
  homepage "https://github.com/corlab/rtt-rst-rt-typekit"
  url "https://github.com/corlab/rtt-rst-rt-typekit.git"
  head "https://github.com/corlab/rtt-rst-rt-typekit.git"

  depends_on "eigen"
  depends_on "rst-rt"
  depends_on "orocos-rtt"
  depends_on "cmake"   => :build

  def install
    args = std_cmake_args+ %W[
      -DCMAKE_MODULE_PATH=#{HOMEBREW_PREFIX}/share/cmake/Modules
    ]
    system "cmake", ".", *args
    system "make install"
  end
end

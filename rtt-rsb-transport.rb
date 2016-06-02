class RttRsbTransport < Formula
  homepage "https://toolkit.cit-ec.uni-bielefeld.de"
  head "https://github.com/corlab/rtt-rsb-transport.git"
  
  depends_on "rst-rt"
  depends_on "rst-proto"
  depends_on "cmake"   => :build

  def install
    args = std_cmake_args+ %W[
      -DCMAKE_MODULE_PATH=#{HOMEBREW_PREFIX}/share/cmake/Modules
    ]
    system "cmake", ".", *args
    system "make install"
  end
end
class RstRt < Formula
  homepage "https://toolkit.cit-ec.uni-bielefeld.de/"
  head "https://github.com/corlab/rst-rt"

  # cmake might fail to locate eigen3 modules...
  depends_on "eigen3"
  depends_on "cmake"   => :build

  def install
  	args = std_cmake_args
    system "cmake", ".", *args
    system "make install"
  end
end

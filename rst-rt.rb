class RstRt < Formula
  homepage "https://toolkit.cit-ec.uni-bielefeld.de"
  head "https://github.com/corlab/rst-rt.git"

  depends_on "eigen"   => "2.91.0"
  depends_on "cmake"   => :build

  # because cmake might fail to locate eigen3 modules:
  def install
    args = std_cmake_args+ %W[
      -DCMAKE_MODULE_PATH=/usr/local/share/cmake/Modules
    ]
    system "cmake", ".", *args
    system "make install"
  end
end

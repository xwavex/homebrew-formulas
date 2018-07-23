class RstRt < Formula
  homepage "https://toolkit.cit-ec.uni-bielefeld.de"
  url "https://github.com/corlab/rst-rt.git"

  depends_on "eigen"
  depends_on "cmake"   => :build

  # because cmake might fail to locate eigen3 modules:
  def install
    args = std_cmake_args+ %W[
      -DCMAKE_MODULE_PATH=#{HOMEBREW_PREFIX}/share/cmake/Modules
    ]
    system "cmake", ".", *args
    system "make install"
  end
end
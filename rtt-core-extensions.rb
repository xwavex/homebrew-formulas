class RttCoreExtensions < Formula
  homepage "https://github.com/corlab/rtt-core-extensions"
  url "https://github.com/corlab/rtt-core-extensions.git"

  depends_on "eigen"
  depends_on "orocos-rtt"
  depends_on "orocos-ocl"
  depends_on "rst-rt"
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

class EigenTypekit < Formula
  homepage 'https://github.com/corlab/rtt_geometry'
  url 'https://github.com/corlab/rtt_geometry.git', :using => :git, :branch => 'indigo-devel'
  head 'https://github.com/corlab/rtt_geometry.git', :using => :git

  depends_on "eigen"
  depends_on "orocos-rtt"
  depends_on "cmake"   => :build

  def install
    args = std_cmake_args+ %W[
      -DCMAKE_MODULE_PATH=#{HOMEBREW_PREFIX}/share/cmake/Modules
    ]

    system "cmake", "./eigen_typekit", *args
    system "make install"
  end
end

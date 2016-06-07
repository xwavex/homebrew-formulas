class KdlTypekit < Formula
  homepage 'https://github.com/orocos/rtt_geometry'
  url 'https://github.com/orocos/rtt_geometry.git', :using => :git, :branch => 'indigo-devel'
  head 'https://github.com/orocos/rtt_geometry.git', :using => :git

  depends_on "orocos-kdl"
  depends_on "orocos-rtt"
  depends_on "cmake"   => :build

  def install
    args = std_cmake_args+ %W[
      -DCMAKE_MODULE_PATH=#{HOMEBREW_PREFIX}/share/cmake/Modules
    ]
    # this is a hack until we have a proper solution.
    #inreplace "./kdl_typekit/CMakeLists.txt" do |s|
    #    s.gsub! "find_package(cmake_modules REQUIRED)", ""
    #end
    system "cmake", "./kdl_typekit", *args
    system "make install"
  end
end

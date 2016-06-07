class EigenTypekit < Formula
  homepage 'https://github.com/orocos/rtt_geometry'
  url 'https://github.com/orocos/rtt_geometry.git', :using => :git, :branch => 'indigo-devel'
  head 'https://github.com/orocos/rtt_geometry.git', :using => :git

  depends_on "eigen"
  depends_on "orocos-rtt"
  depends_on "cmake"   => :build

  def install
    args = std_cmake_args+ %W[
      -DCMAKE_MODULE_PATH=#{HOMEBREW_PREFIX}/share/cmake/Modules
    ]
    # this is a hack until we have a proper solution.
    inreplace "./eigen_typekit/CMakeLists.txt" do |s|
        s.gsub! "find_package(cmake_modules REQUIRED)", ""
        s.gsub! "include_directories(${Eigen_INCLUDE_DIRS})", ""
        s.gsub! "find_package(Eigen REQUIRED)", "find_package(Eigen3)\nadd_definitions(${EIGEN3_DEFINITIONS})\ninclude_directories(${EIGEN3_INCLUDE_DIR} ${EIGEN3_INCLUDE_DIRS})"
    end
    system "cmake", "./eigen_typekit", *args
    system "make install"
  end
end

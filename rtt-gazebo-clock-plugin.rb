class RttGazeboClockPlugin < Formula
  homepage "https://github.com/corlab/rtt-gazebo-clock-plugin"
  url "https://github.com/corlab/rtt-gazebo-clock-plugin.git"

  depends_on "orocos-rtt"
  depends_on "orocos-ocl"
  depends_on "gazebo7"
  depends_on "cmake"   => :build

  def install
    args = std_cmake_args+ %W[
      -DCMAKE_MODULE_PATH=#{HOMEBREW_PREFIX}/share/cmake/Modules
    ]
    system "cmake", ".", *args
    system "make install"
  end
end

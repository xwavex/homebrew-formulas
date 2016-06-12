class RttGazeboEmbedded < Formula
  homepage "https://github.com/corlab/rtt-gazebo-embedded"
  url "https://github.com/corlab/rtt-gazebo-embedded.git"

  depends_on "orocos-rtt"
  depends_on "gazebo7"
  depends_on "cmake"   => :build

  def install
    args = std_cmake_args
    system "cmake", ".", *args
    system "make install"
  end
end

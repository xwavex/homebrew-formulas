class RttGazeboRobotSim < Formula
  homepage "https://github.com/cogimon/rtt-gazebo-robot-sim"
  url "https://github.com/cogimon/rtt-gazebo-robot-sim.git", :branch => 'kinematic_chains'

  depends_on "eigen"
  depends_on "orocos-rtt"
  depends_on "gazebo7"
  depends_on "rst-rt"
  depends_on "cmake"   => :build

  # because cmake might fail to locate eigen3 modules:
  def install
    args = std_cmake_args
    system "cmake", ".", *args
    system "make install"
  end
end

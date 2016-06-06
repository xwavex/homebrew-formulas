class OrocosKdl < Formula
  homepage "http://www.orocos.org/kdl"
  url "https://github.com/orocos/orocos_kinematics_dynamics.git"
  head "https://github.com/orocos/orocos_kinematics_dynamics.git"

  depends_on "eigen"
  depends_on "cmake"   => :build
  depends_on "cppunit" => :build
  depends_on "boost"   => :build

  def install
    cd "orocos_kdl" do
      # Removes solvertest from orocos-kdl, as per
      # http://www.orocos.org/forum/rtt/rtt-dev/bug-1043-new-errors-underlying-ik-solver-are-not-correctly-processed
      inreplace "tests/CMakeLists.txt", "ADD_TEST(solvertest solvertest)", "" if build.head?

      mkdir "build" do
        args = std_cmake_args
        #args << "-DENABLE_TESTS=ON" if build.with? "check"
        system "cmake", "..", *args
        system "make"
        #system "make", "check" if build.with? "check"
        system "make", "install"
      end
    end
  end
end

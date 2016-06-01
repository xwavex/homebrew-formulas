class OrocosOcl < Formula
  homepage "http://www.orocos.org"
  head "https://github.com/orocos-toolchain/ocl.git"

  # This is strange: If you have gnu realine already installed, linker tries to 
  # link it agains osx version of that library which is outdated. No matter how
  # hard I tried to force cmake to link against brew version of readline, I 
  # failed. Hacky solution seems to be uninstall readline (if you have already)
  # installed it from homebrew and then use this formula which have it as a
  # dependency. More speculation is needed.
  depends_on "orocos-rtt"
  depends_on "orocos-log4cpp"
  depends_on "readline"
  depends_on "cmake"   => :build

  def install
  	args = std_cmake_args+ %W[
      -DBUILD_LUA_RTT=OFF
    ]
    system "cmake", ".", *args
    system "make install"
  end
end

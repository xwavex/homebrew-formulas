require 'formula'

# Documentation: https://github.com/mxcl/homebrew/wiki/Formula-Cookbook
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Rsb < Formula
  homepage 'https://toolkit.cit-ec.uni-bielefeld.de/components/generic/robotics-service-bus'
  url 'https://ci.cor-lab.de/view/RSC/job/rsb-cpp-0.6-src/lastSuccessfulBuild/label=ubuntu_precise_64bit/artifact/rsb-0.6-src.tar.gz'
  sha1 '230f251b5a6ecfbaf16f67122fc834cc88bebd72'

  head 'https://code.cor-lab.org/svn/rsb/trunk/cpp/core', :using => :svn

  depends_on 'cmake' => :build
  depends_on 'boost'
  depends_on 'rsc' 
  depends_on 'rsb-protocol'

  def install
    # ENV.x11 # if your formula requires any X11 headers
    # ENV.j1  # if your formula's build system can't parallelize
    args = std_cmake_args + %W[-DBUILD_SPREAD_TRANSPORT=OFF]

    system "cmake", ".", *args
    system "make install" # if this fails, try separate make/make install steps
  end

  def test
    # This test will fail and we won't accept that! It's enough to just replace
    # "false" with the main program this formula installs, but it'd be nice if you
    # were more thorough. Run the test with `brew test rsb`.
    system "false"
  end
end

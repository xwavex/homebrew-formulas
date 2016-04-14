homebrew-formulas for the RSX robotics architecture
===================================================

This repository contains Homebrew formulas for the RSX integration architecture and additional robotics software. 
The main focus is to support the installation of the Robotics Service Bus (RSB), accompanying libraries and tools.  

Further information about RSB can be found [here](http://docs.cor-lab.de//rsb-manual/trunk/html/index.html).

How do I install RSB using these formula?
-----------------------------------------
Just `brew tap corlab/homebrew-formulas` and then `brew install <formula>`. For RSB:

    brew tap corlab/homebrew-formulas
    brew install rsb-tools-cpp

If the formula conflicts with one from mxcl/master or another tap, you can `brew install corlab/homebrew-formulas/<formula>`.

You can also install via URL:


    brew install https://raw.github.com/corlab/homebrew-formulas/master/<formula>.rb


Docs
----
`brew help`, `man brew`, or the Homebrew [wiki](https://github.com/mxcl/homebrew/wiki).

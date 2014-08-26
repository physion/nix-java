/* module determines the name of some of the generated files in the
   module.  i.e. nix.java, nixJNI.java as well as numerous other Java
   proxy class files.
 */
%module nix

/* This section is copied verbatim into the resulting wrapper file
    created by SWIG. This should include the headers of the project
    you want to wrap, to make sure the wrapper code will compile.
 */
%{
#include <nix.hpp>
%}

/* Defines are used to introduce constants, in Java they will become
   static final variables.

   NIXAPI is used as a compiler specific define for Windows. SWIG will
   complain without this empty define.
 */
#define NIXAPI

/* These includes are needed to generate the wrapper.
 */
%include <nix/base/ImplContainer.hpp>
%include <nix/base/IFile.hpp>

/* Declare a namespace to avoid conflicts and to reflex the underlying
   code structure.  

   The template directive is used as a shorthand to instantiate a
   template class of a specific type. i.e. ImplContainerIFile is the
   name of the instantiation in Java.
 */
namespace nix {
    %template(ImplContainerIFile) nix::base::ImplContainer<nix::base::IFile>;
}

/* This will create the actual binding for File.
 */
%include <nix/File.hpp>

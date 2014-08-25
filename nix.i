%module nix
%{
#include <nix.hpp>
%}

#define NIXAPI

%include <nix/base/ImplContainer.hpp>
%include <nix/base/IFile.hpp>

namespace nix {
    %template(ImplContainerIFile) nix::base::ImplContainer<nix::base::IFile>;
}

%include <nix/File.hpp>

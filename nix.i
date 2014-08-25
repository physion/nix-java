%module nix
%{
#include <nix.hpp>
%}


%include <nix/base/ImplContainer.hpp>
%include <nix.hpp>


namespace nix {
    namespace base {
        %template(ImplContainerIFile) base::ImplContainer<base::IFile>;
    }
    
    class File : public nix::base::ImplContainerIFile {
        static File open(const std::string &name, FileMode mode=FileMode::ReadWrite,
                         Implementation impl=Implementation::Hdf5);
    };
}

/*%include <nix/base/ImplContainer.hpp>
%include <nix/base/IFile.hpp>

*/
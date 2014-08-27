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
#include <nix/Block.hpp>
#include <nix/DataArray.hpp>
#include <nix/MultiTag.hpp>
#include <nix/Dimensions.hpp>
#include <nix/File.hpp>
#include <nix/Property.hpp>
#include <nix/Feature.hpp>
#include <nix/Section.hpp>
#include <nix/Tag.hpp>
#include <nix/Source.hpp>
#include <nix/Value.hpp>
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
%include <nix/base/Entity.hpp>
%include <nix/base/NamedEntity.hpp>
%include <nix/base/EntityWithSources.hpp>
%include <nix/base/EntityWithMetadata.hpp>
%include <nix/base/IFile.hpp>
%include <nix/base/IBlock.hpp>
%include <nix/base/IDataArray.hpp>
%include <nix/base/IMultiTag.hpp>
%include <nix/base/IDimensions.hpp>
%include <nix/base/IProperty.hpp>
%include <nix/base/IFeature.hpp>
%include <nix/base/ISection.hpp>
%include <nix/base/ITag.hpp>
%include <nix/base/ISource.hpp>

/* Declare a namespace to avoid conflicts and to reflex the underlying
   code structure.  

   The template directive is used as a shorthand to instantiate a
   template class of a specific type. i.e. ImplContainerIFile is the
   name of the instantiation in Java.
 */
namespace nix {
    %template(ImplContainerIFile) nix::base::ImplContainer<nix::base::IFile>;
    %template(EntityIProperty) nix::base::Entity<nix::base::IProperty>;
    %template(EntityWithMetadataISource) nix::base::EntityWithMetadata<nix::base::ISource>;
    %template(EntityWithMetadataIBlock) nix::base::EntityWithMetadata<nix::base::IBlock>;
    %template(EntityWithSourcesITag) nix::base::EntityWithSources<nix::base::ITag>;
    %template(NamedEntityISection) nix::base::NamedEntity<nix::base::ISection>;
    %template(ImplContainerISampledDimension) nix::base::ImplContainer<nix::base::ISampledDimension>;
    %template(ImplContainerIRangeDimension) nix::base::ImplContainer<nix::base::IRangeDimension>;
    %template(ImplContainerISetDimension) nix::base::ImplContainer<nix::base::ISetDimension>;
    %template(ImplContainerIDimension) nix::base::ImplContainer<nix::base::IDimension>;
    %template(EntityIFeature) nix::base::Entity<nix::base::IFeature>;
    %template(EntityWithSourcesIDataArray) nix::base::EntityWithSources<nix::base::IDataArray>;
}

/* This will create the actual binding for nix API classes.
 */
%include <nix/Block.hpp>
%include <nix/DataArray.hpp>
%include <nix/MultiTag.hpp>
%include <nix/Dimensions.hpp>
%include <nix/File.hpp>
%include <nix/Property.hpp>
%include <nix/Feature.hpp>
%include <nix/Section.hpp>
%include <nix/Tag.hpp>
%include <nix/Source.hpp>
